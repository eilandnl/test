SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SIZ_CheckAndDropTable]
	 @database				varchar(255)	= null
	,@table					varchar(255)	= ''
	,@ProcesID				int				= -1
AS
BEGIN

	SET NOCOUNT ON
	
	IF (@table is not null AND @table <> '')
	BEGIN
		DECLARE @TableExists BIT
		       ,@DatabaseNameOK BIT
			   ,@tmp int
			   ,@tmpDbName2 varchar(7999)

		SELECT @database = coalesce(@database, db_name())
		SELECT @table = replace(replace(@table,'[',''),']','')
		
--BH: Database mogelijk in Tabelnaam meegeven
		set @tmp = CHARINDEX('.',@Table,1)
		if @tmp <>0
			-- Mechanisme nodig !
			begin
			set @tmpDbName2 = left(@Table,@tmp-1)			-- DbName gevonden
			set @tmp = CHARINDEX('.',reverse(@Table),1)
			set @Table = right(@Table,@tmp-1)				-- Haal uit tabelnaam weg

			if @Database <> ''
				begin 
				if @Database <> @tmpDBname2					-- STRIJDIGE INFO !
					begin
					print 'Database ambigu ! (is het '+@database+' of '+@tmpDbName2+' ?)'	
					set @DatabaseNameOK = 0
                    RAISERROR('Database ambigu. Check parameters voor routine SIZ_CheckAndDropTable', 10, 1) 
					end
				else
					begin
					set @DatabaseNameOK = 1
					end
				end
			else
				begin
				set @Database = @tmpDbName2
				set @DatabaseNameOK = 1
				end
			end
		else
			-- Mechanisme niet nodig
			begin
			set @DatabaseNameOK = 1
			end

--BH: Database mogelijk in Tabelnaam meegeven




		IF (@table like '#%')
			BEGIN
				EXEC('IF (OBJECT_ID(''tempdb..'+@table+''') IS NOT NULL) 
						BEGIN 
							DROP TABLE [tempdb]..['+ @table +'] 
							PRINT ''DROPPED TABLE [tempdb]..['+@table+']''
						END
						ELSE PRINT ''TABLE [tempdb]..['+@table+'] DOES NOT EXIST'''
						)				
			END		
		ELSE 
			BEGIN	
			
				CREATE TABLE #table_exists (tab int)
				INSERT #table_exists EXEC('SELECT 1 FROM [' + @database + '].INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = ''' + @table + '''')
				
				IF ((SELECT tab from #table_exists) = 1)
					SET @TableExists = 1
				ELSE
					SET @TableExists = 0
						
				IF (@TableExists = 1)
				BEGIN 
					EXEC ('DROP TABLE ['+@database+']..['+@table+']')	
					PRINT 'DROPPED TABLE ['+@database+']..['+@table+']'
				END
				ELSE 
					PRINT 'TABLE ['+@database+']..['+@table+'] DOES NOT EXIST'
				
				DROP TABLE #table_exists
			END
	END
	
	SET NOCOUNT OFF
/*
	-- stap_eind
	EXEC	SIZ_Log @Log = 'stap_eind', @ProcesID = @ProcesID
*/
END

GO
