BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t2].[LastName]
FROM
	(
		SELECT
			[a_Employee].[EmployeeID] as [c1],
			[a_Employee].[LastName]
		FROM
			[EmployeeTerritories] [t1]
				LEFT JOIN [Employees] [a_Employee] ON [t1].[EmployeeID] = [a_Employee].[EmployeeID]
	) [t2]
GROUP BY
	[t2].[c1],
	[t2].[LastName]
HAVING
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t3]
		WHERE
			[t2].[c1] = [t3].[EmployeeID]
	) > 1 AND
	Count(*) > 2

