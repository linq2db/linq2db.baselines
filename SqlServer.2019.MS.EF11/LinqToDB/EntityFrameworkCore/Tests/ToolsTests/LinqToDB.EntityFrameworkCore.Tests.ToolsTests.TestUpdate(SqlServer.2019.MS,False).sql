-- SqlServer.2019
DECLARE @test Int -- Int32
SET     @test = 1

UPDATE
	[Employees]
SET
	[Address] = [Employees].[Address]
WHERE
	[Employees].[EmployeeID] = @test



