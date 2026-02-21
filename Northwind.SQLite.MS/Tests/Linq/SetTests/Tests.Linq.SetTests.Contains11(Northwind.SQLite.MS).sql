-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[g_2].[LastName],
	[g_2].[cnt]
FROM
	(
		SELECT
			[a_Employee].[EmployeeID],
			[a_Employee].[LastName],
			COUNT(CASE
				WHEN [a_Employee].[FirstName] LIKE '%an%' ESCAPE '~' THEN 1
				ELSE NULL
			END) as [cnt]
		FROM
			[EmployeeTerritories] [g_1]
				LEFT JOIN [Employees] [a_Employee] ON [g_1].[EmployeeID] = [a_Employee].[EmployeeID]
		GROUP BY
			[a_Employee].[EmployeeID],
			[a_Employee].[LastName],
			[a_Employee].[FirstName],
			[a_Employee].[Title],
			[a_Employee].[TitleOfCourtesy],
			[a_Employee].[BirthDate],
			[a_Employee].[HireDate],
			[a_Employee].[Address],
			[a_Employee].[City],
			[a_Employee].[Region],
			[a_Employee].[PostalCode],
			[a_Employee].[Country],
			[a_Employee].[HomePhone],
			[a_Employee].[Extension],
			[a_Employee].[Photo],
			[a_Employee].[Notes],
			[a_Employee].[ReportsTo],
			[a_Employee].[PhotoPath]
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

