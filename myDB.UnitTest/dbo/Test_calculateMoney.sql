CREATE PROC  TestUClass.[test tax amount]
AS
BEGIN
DECLARE @TestedAmount as money = 100
DECLARE @expected as money  = 18
DECLARE @actual AS money 
SET @actual = dbo.CalculateTaxAmount(100)
 
EXEC tSQLt.AssertEquals @expected , @actual
 
END