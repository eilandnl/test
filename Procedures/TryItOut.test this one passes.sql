SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE TryItOut.[test this one passes]
AS
BEGIN
    DECLARE @sum INT;
    SELECT @sum = 1 + 2;

    EXEC tSQLt.AssertEquals 3, @sum;
END
GO
