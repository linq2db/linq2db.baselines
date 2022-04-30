BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_ReportsToEmployee].[PhotoPath],
	[a_ReportsToEmployee].[ReportsTo],
	[a_ReportsToEmployee].[Notes],
	[a_ReportsToEmployee].[Photo],
	[a_ReportsToEmployee].[Extension],
	[a_ReportsToEmployee].[HomePhone],
	[a_ReportsToEmployee].[Country],
	[a_ReportsToEmployee].[PostalCode],
	[a_ReportsToEmployee].[Region],
	[a_ReportsToEmployee].[City],
	[a_ReportsToEmployee].[Address],
	[a_ReportsToEmployee].[HireDate],
	[a_ReportsToEmployee].[BirthDate],
	[a_ReportsToEmployee].[TitleOfCourtesy],
	[a_ReportsToEmployee].[Title],
	[a_ReportsToEmployee].[FirstName],
	[a_ReportsToEmployee].[LastName],
	[a_ReportsToEmployee].[EmployeeID],
	[employee].[PhotoPath],
	[employee].[ReportsTo],
	[employee].[Notes],
	[employee].[Photo],
	[employee].[Extension],
	[employee].[HomePhone],
	[employee].[Country],
	[employee].[PostalCode],
	[employee].[Region],
	[employee].[City],
	[employee].[Address],
	[employee].[HireDate],
	[employee].[BirthDate],
	[employee].[TitleOfCourtesy],
	[employee].[Title],
	[employee].[FirstName],
	[employee].[LastName],
	[employee].[EmployeeID]
FROM
	[Employees] [employee]
		LEFT JOIN [Employees] [a_ReportsToEmployee] ON [employee].[ReportsTo] = [a_ReportsToEmployee].[EmployeeID]
WHERE
	[a_ReportsToEmployee].[EmployeeID] IS NOT NULL

