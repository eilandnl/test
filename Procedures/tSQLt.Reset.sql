SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE tSQLt.Reset
AS
BEGIN
  EXEC tSQLt.Private_ResetNewTestClassList;
END;
GO