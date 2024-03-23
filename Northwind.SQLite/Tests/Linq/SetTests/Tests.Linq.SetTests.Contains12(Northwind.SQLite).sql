BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[g_2].[LastName]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			[a_Employee].[LastName],
			[a_Employee].[EmployeeID]
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
			[g_2].[EmployeeID] IS NOT NULL AND [g_2].[EmployeeID] = [a_EmployeeTerritories].[EmployeeID]
	) > 1 AND
	[g_2].[COUNT_1] > 2

