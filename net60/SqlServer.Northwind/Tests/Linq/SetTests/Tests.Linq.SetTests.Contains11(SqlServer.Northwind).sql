BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t2].[LastName],
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t]
				LEFT JOIN [Employees] [a_Employee] ON [t].[EmployeeID] = [a_Employee].[EmployeeID]
		WHERE
			([t2].[c1] = [a_Employee].[EmployeeID] OR [t2].[c1] IS NULL AND [a_Employee].[EmployeeID] IS NULL) AND
			[a_Employee].[FirstName] LIKE N'%an%' ESCAPE N'~'
	)
FROM
	(
		SELECT
			[a_Employee_1].[EmployeeID] as [c1],
			[a_Employee_1].[LastName]
		FROM
			[EmployeeTerritories] [t1]
				LEFT JOIN [Employees] [a_Employee_1] ON [t1].[EmployeeID] = [a_Employee_1].[EmployeeID]
	) [t2]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t3]
		WHERE
			[t2].[c1] = [t3].[EmployeeID]
	) > 1
GROUP BY
	[t2].[c1],
	[t2].[LastName]

