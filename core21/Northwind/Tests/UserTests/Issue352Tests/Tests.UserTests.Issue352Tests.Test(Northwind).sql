BeforeExecute
-- Northwind SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT 
	[t1].[EmployeeID], 
	(
		SELECT TOP (@take) 
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [t1].[EmployeeID]
	)
FROM
	( 
		SELECT 
			[e].[EmployeeID]
		FROM
			[Employees] [e],
			[EmployeeTerritories] [et]
		WHERE
			[et].[EmployeeID] = [e].[EmployeeID]
	) [t1]
GROUP BY
	[t1].[EmployeeID]

