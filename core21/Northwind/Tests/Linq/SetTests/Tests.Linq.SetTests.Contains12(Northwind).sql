BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[a_Employee].[LastName]
FROM
	[EmployeeTerritories] [t1]
		LEFT JOIN [Employees] [a_Employee] ON [t1].[EmployeeID] = [a_Employee].[EmployeeID]
GROUP BY
	[a_Employee].[EmployeeID],
	[a_Employee].[LastName]
HAVING
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t2]
		WHERE
			[a_Employee].[EmployeeID] = [t2].[EmployeeID]
	) > 1 AND
	Count(*) > 2

