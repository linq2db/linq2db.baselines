BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[g_1].[EmployeeID],
	(
		SELECT
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [g_1].[EmployeeID]
		LIMIT 1
	)
FROM
	[Employees] [g_1]
		CROSS JOIN [EmployeeTerritories] [et]
WHERE
	[et].[EmployeeID] = [g_1].[EmployeeID]
GROUP BY
	[g_1].[EmployeeID]

