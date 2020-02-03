CREATE SCHEMA TestUClass 
    AUTHORIZATION dbo;
GO

EXECUTE sp_addextendedproperty @name = N'tSQLt.TestClass', @value = 1, @level0type = N'SCHEMA', @level0name = N'TestUClass';
GO

CREATE PROC  TestUClass.[test tax amount]
AS
BEGIN
DECLARE @TestedAmount as money = 100
DECLARE @expected as money  = 18
DECLARE @actual AS money 
SET @actual = dbo.CalculateTaxAmount(100)
 
EXEC tSQLt.AssertEquals @expected , @actual
 
END