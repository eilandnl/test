SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE TryItOut.[test this causes a failure]
AS
BEGIN
    EXEC tSQLt.Fail 'This is what a failure looks like';
END;
GO
