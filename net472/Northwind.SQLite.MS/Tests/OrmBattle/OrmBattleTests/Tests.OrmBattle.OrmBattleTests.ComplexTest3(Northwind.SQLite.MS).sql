﻿BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[key_data_result].[SupplierID],
	[key_data_result].[ProductID],
	[detail].[CompanyName]
FROM
	(
		SELECT DISTINCT
			[a_Supplier].[SupplierID],
			[p].[ProductID]
		FROM
			[Products] [p]
				LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]
	) [key_data_result]
		INNER JOIN [Suppliers] [detail] ON [detail].[SupplierID] = [key_data_result].[SupplierID]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued],
	[a_Supplier].[SupplierID]
FROM
	[Products] [p]
		LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]

