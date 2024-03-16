﻿BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_ReportsToEmployee].[EmployeeID],
	[a_ReportsToEmployee].[LastName],
	[a_ReportsToEmployee].[FirstName],
	[a_ReportsToEmployee].[Title],
	[a_ReportsToEmployee].[TitleOfCourtesy],
	[a_ReportsToEmployee].[BirthDate],
	[a_ReportsToEmployee].[HireDate],
	[a_ReportsToEmployee].[Address],
	[a_ReportsToEmployee].[City],
	[a_ReportsToEmployee].[Region],
	[a_ReportsToEmployee].[PostalCode],
	[a_ReportsToEmployee].[Country],
	[a_ReportsToEmployee].[HomePhone],
	[a_ReportsToEmployee].[Extension],
	[a_ReportsToEmployee].[Photo],
	[a_ReportsToEmployee].[Notes],
	[a_ReportsToEmployee].[ReportsTo],
	[a_ReportsToEmployee].[PhotoPath],
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

