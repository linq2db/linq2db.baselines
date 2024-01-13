BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[employee].[EmployeeID],
	[employee].[LastName],
	[employee].[FirstName],
	[employee].[Title],
	[employee].[TitleOfCourtesy],
	[employee].[BirthDate],
	[employee].[HireDate],
	[employee].[Address],
	[employee].[City],
	[employee].[Region],
	[employee].[PostalCode],
	[employee].[Country],
	[employee].[HomePhone],
	[employee].[Extension],
	[employee].[Photo],
	[employee].[Notes],
	[employee].[ReportsTo],
	[employee].[PhotoPath]
FROM
	[Employees] [employee]
		LEFT JOIN [Employees] [a_ReportsToEmployee] ON ([employee].[ReportsTo] = [a_ReportsToEmployee].[EmployeeID] OR [employee].[ReportsTo] IS NULL AND [a_ReportsToEmployee].[EmployeeID] IS NULL)
WHERE
	[a_ReportsToEmployee].[EmployeeID] IS NOT NULL

