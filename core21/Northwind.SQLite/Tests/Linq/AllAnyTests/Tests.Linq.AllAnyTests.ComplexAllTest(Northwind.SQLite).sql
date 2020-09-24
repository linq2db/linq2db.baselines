﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[ShipCountry],
	[t1].[ShipPostalCode],
	[t1].[ShipRegion],
	[t1].[ShipCity],
	[t1].[ShipAddress],
	[t1].[ShipName],
	[t1].[Freight],
	[t1].[ShipVia],
	[t1].[ShippedDate],
	[t1].[RequiredDate],
	[t1].[OrderDate],
	[t1].[EmployeeID],
	[t1].[CustomerID],
	[t1].[OrderID]
FROM
	[Orders] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[Fax],
	[t1].[Phone],
	[t1].[Country],
	[t1].[PostalCode],
	[t1].[Region],
	[t1].[City],
	[t1].[Address],
	[t1].[ContactTitle],
	[t1].[ContactName],
	[t1].[CompanyName],
	[t1].[CustomerID]
FROM
	[Customers] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[PhotoPath],
	[t1].[ReportsTo],
	[t1].[Notes],
	[t1].[Photo],
	[t1].[Extension],
	[t1].[HomePhone],
	[t1].[Country],
	[t1].[PostalCode],
	[t1].[Region],
	[t1].[City],
	[t1].[Address],
	[t1].[HireDate],
	[t1].[BirthDate],
	[t1].[TitleOfCourtesy],
	[t1].[Title],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[EmployeeID]
FROM
	[Employees] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[o].[ShipCountry],
	[o].[ShipPostalCode],
	[o].[ShipRegion],
	[o].[ShipCity],
	[o].[ShipAddress],
	[o].[ShipName],
	[o].[Freight],
	[o].[ShipVia],
	[o].[ShippedDate],
	[o].[RequiredDate],
	[o].[OrderDate],
	[o].[EmployeeID],
	[o].[CustomerID],
	[o].[OrderID]
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL OR [o].[CustomerID] = [a_Customer].[CustomerID])
		LEFT JOIN [Employees] [a_Employee] ON [o].[EmployeeID] = [a_Employee].[EmployeeID]
WHERE
	(NOT EXISTS(
		SELECT
			*
		FROM
			[Customers] [c_1]
		WHERE
			([c_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL OR [c_1].[CustomerID] = [a_Customer].[CustomerID]) AND
			[c_1].[CompanyName] NOT LIKE 'A%'
	) OR NOT EXISTS(
		SELECT
			*
		FROM
			[Employees] [e]
		WHERE
			[e].[EmployeeID] = [a_Employee].[EmployeeID] AND [e].[FirstName] NOT LIKE '%t'
	))

