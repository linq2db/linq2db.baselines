BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_Employee_1].[LastName],
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [keyParam]
				LEFT JOIN [Employees] [a_Employee] ON [keyParam].[EmployeeID] = [a_Employee].[EmployeeID]
		WHERE
			[a_Employee_1].[EmployeeID] = [a_Employee].[EmployeeID] AND
			[a_Employee].[FirstName] LIKE '%an%'
	)
FROM
	[EmployeeTerritories] [t1]
		LEFT JOIN [Employees] [a_Employee_1] ON [t1].[EmployeeID] = [a_Employee_1].[EmployeeID]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t2]
		WHERE
			[a_Employee_1].[EmployeeID] = [t2].[EmployeeID]
	) > 1
GROUP BY
	[a_Employee_1].[EmployeeID],
	[a_Employee_1].[LastName]

