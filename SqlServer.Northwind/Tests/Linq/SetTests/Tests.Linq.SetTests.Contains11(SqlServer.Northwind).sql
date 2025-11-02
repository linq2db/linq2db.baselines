-- SqlServer.Northwind SqlServer.2019

SELECT
	[g_2].[LastName],
	[g_2].[COUNT_1]
FROM
	(
		SELECT
			[a_Employee].[EmployeeID],
			[a_Employee].[LastName],
			COUNT(IIF([a_Employee].[FirstName] LIKE N'%an%' ESCAPE N'~', 1, NULL)) as [COUNT_1]
		FROM
			[EmployeeTerritories] [g_1]
				LEFT JOIN [Employees] [a_Employee] ON [g_1].[EmployeeID] = [a_Employee].[EmployeeID]
		GROUP BY
			[a_Employee].[EmployeeID],
			[a_Employee].[LastName]
	) [g_2]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[EmployeeTerritories] [a_EmployeeTerritories]
		WHERE
			[g_2].[EmployeeID] = [a_EmployeeTerritories].[EmployeeID]
	) > 1

