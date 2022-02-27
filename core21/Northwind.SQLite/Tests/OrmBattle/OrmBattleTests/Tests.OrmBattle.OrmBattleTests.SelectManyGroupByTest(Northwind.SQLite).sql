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

SELECT
	[a_Customer_1].[Fax],
	[a_Customer_1].[Phone],
	[a_Customer_1].[Country],
	[a_Customer_1].[PostalCode],
	[a_Customer_1].[Region],
	[a_Customer_1].[City],
	[a_Customer_1].[Address],
	[a_Customer_1].[ContactTitle],
	[a_Customer_1].[ContactName],
	[a_Customer_1].[CompanyName],
	[a_Customer_1].[CustomerID]
FROM
	(
		SELECT
			[a_Customer].[CustomerID]
		FROM
			[Orders] [t1]
				INNER JOIN [Customers] [a_Customer] ON ([t1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL OR [t1].[CustomerID] = [a_Customer].[CustomerID])
		GROUP BY
			[a_Customer].[CustomerID]
		HAVING
			Count(*) > 20
	) [cp]
		INNER JOIN [Orders] [c_1] ON ([cp].[CustomerID] IS NULL AND [a_Customer_1].[CustomerID] IS NULL OR [cp].[CustomerID] = [a_Customer_1].[CustomerID])
			INNER JOIN [Customers] [a_Customer_1] ON ([c_1].[CustomerID] IS NULL AND [a_Customer_1].[CustomerID] IS NULL OR [c_1].[CustomerID] = [a_Customer_1].[CustomerID])

