BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[EmployeeID],
	(
		SELECT
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [t1].[EmployeeID]
		LIMIT 1
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

