BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[LastName],
	[t1].[COUNT_2]
FROM
	(
		SELECT
			COUNT(*) as [COUNT_1],
			[a_Employee].[LastName],
			COUNT(CASE
				WHEN [a_Employee].[FirstName] LIKE '%an%' ESCAPE '~' THEN 1
				ELSE NULL
			END) as [COUNT_2],
			[a_Employee].[EmployeeID]
		FROM
			[EmployeeTerritories] [g_1]
				LEFT JOIN [Employees] [a_Employee] ON [g_1].[EmployeeID] = [a_Employee].[EmployeeID]
		GROUP BY
			[a_Employee].[EmployeeID],
			[a_Employee].[LastName]
	) [t1]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[EmployeeTerritories] [a_EmployeeTerritories]
		WHERE
			[t1].[EmployeeID] = [a_EmployeeTerritories].[EmployeeID]
	) > 1 AND
	[t1].[COUNT_1] > 2

