-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[g_2].[EmployeeID],
	(
		SELECT
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [g_2].[EmployeeID]
		LIMIT 1
	)
FROM
	(
		SELECT DISTINCT
			[g_1].[EmployeeID]
		FROM
			[Employees] [g_1],
			[EmployeeTerritories] [et]
		WHERE
			[et].[EmployeeID] = [g_1].[EmployeeID]
	) [g_2]

