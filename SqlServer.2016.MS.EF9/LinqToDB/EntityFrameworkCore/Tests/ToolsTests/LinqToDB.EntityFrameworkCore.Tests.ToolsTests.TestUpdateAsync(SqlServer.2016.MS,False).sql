﻿-- SqlServer.2016 (asynchronously)
DECLARE @test Int -- Int32
SET     @test = 1

UPDATE
	[Employees]
SET
	[Address] = [Employees].[Address]
WHERE
	[Employees].[EmployeeID] = @test



