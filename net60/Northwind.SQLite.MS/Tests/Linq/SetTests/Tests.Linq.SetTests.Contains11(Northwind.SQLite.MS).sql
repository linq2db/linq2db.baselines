BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[g_2].[LastName],
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [e]
				LEFT JOIN [Employees] [a_Employee_1] ON [e].[EmployeeID] = [a_Employee_1].[EmployeeID]
		WHERE
			[a_Employee_1].[FirstName] LIKE '%an%' ESCAPE '~' AND
			([g_2].[EmployeeID] = [a_Employee_1].[EmployeeID] OR [g_2].[EmployeeID] IS NULL AND [a_Employee_1].[EmployeeID] IS NULL)
	)
FROM
	(
		SELECT
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
			Count(*)
		FROM
			[EmployeeTerritories] [a_EmployeeTerritories]
		WHERE
			[g_2].[EmployeeID] IS NOT NULL AND [g_2].[EmployeeID] = [a_EmployeeTerritories].[EmployeeID]
	) > 1

