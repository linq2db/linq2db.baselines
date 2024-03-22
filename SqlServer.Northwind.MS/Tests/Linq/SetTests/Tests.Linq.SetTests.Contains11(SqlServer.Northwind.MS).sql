BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[g_3].[LastName],
	[g_3].[COUNT_1]
FROM
	(
		SELECT
			[g_2].[LastName],
			COUNT(IIF([g_2].[FirstName] LIKE N'%an%' ESCAPE N'~', 1, NULL)) as [COUNT_1],
			[g_2].[EmployeeID]
		FROM
			(
				SELECT
					[a_Employee].[EmployeeID],
					[a_Employee].[LastName],
					[a_Employee].[FirstName]
				FROM
					[EmployeeTerritories] [g_1]
						LEFT JOIN [Employees] [a_Employee] ON [g_1].[EmployeeID] = [a_Employee].[EmployeeID]
			) [g_2]
		GROUP BY
			[g_2].[EmployeeID],
			[g_2].[LastName]
	) [g_3]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[EmployeeTerritories] [a_EmployeeTerritories]
		WHERE
			[g_3].[EmployeeID] IS NOT NULL AND [g_3].[EmployeeID] = [a_EmployeeTerritories].[EmployeeID]
	) > 1

