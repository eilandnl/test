SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [tSQLt].[Private_Configurations] (
		[Name]      [nvarchar](100) COLLATE Latin1_General_CI_AS NOT NULL,
		[Value]     [sql_variant] NULL,
		CONSTRAINT [PK__Private___737584F744065BFB]
		PRIMARY KEY
		CLUSTERED
		([Name])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [tSQLt].[Private_Configurations] SET (LOCK_ESCALATION = TABLE)
GO
