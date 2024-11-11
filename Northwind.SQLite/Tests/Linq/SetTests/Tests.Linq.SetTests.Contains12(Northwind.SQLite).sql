BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[g_2].[LastName],
	[g_2].[COUNT_2]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			[a_Employee].[LastName],
			COUNT(CASE
				WHEN [a_Employee].[FirstName] LIKE '%an%' ESCAPE '~' THEN 1
				ELSE NULL
			END) as [COUNT_2]
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
			[EmployeeTerritories] [g_3]
				LEFT JOIN [Employees] [a_Employee] ON [g_3].[EmployeeID] = [a_Employee].[EmployeeID]
	) > 1 AND
	[g_2].[COUNT_1] > 2

