﻿BeforeExecute
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
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued]
FROM
	[Products] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @OrderDate  -- DateTime
SET     @OrderDate = '2001-01-01'

SELECT
	[c_1].[Fax],
	[c_1].[Phone],
	[c_1].[Country],
	[c_1].[PostalCode],
	[c_1].[Region],
	[c_1].[City],
	[c_1].[Address],
	[c_1].[ContactTitle],
	[c_1].[ContactName],
	[c_1].[CompanyName],
	[c_1].[CustomerID],
	EXISTS(
		SELECT
			*
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL OR [o].[CustomerID] = [a_Customer].[CustomerID])
		WHERE
			DateTime([o].[OrderDate]) > DateTime(@OrderDate) AND
			([a_Customer].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL OR [a_Customer].[CustomerID] = [c_1].[CustomerID])
	)
FROM
	[Customers] [c_1]

