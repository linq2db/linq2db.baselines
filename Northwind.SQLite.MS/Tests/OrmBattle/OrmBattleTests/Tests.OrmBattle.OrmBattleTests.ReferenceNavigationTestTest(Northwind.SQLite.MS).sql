BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[CustomerID],
	[t1].[CompanyName],
	[t1].[ContactName],
	[t1].[ContactTitle],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[Phone],
	[t1].[Fax]
FROM
	[Customers] [t1]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[EmployeeID],
	[t1].[LastName],
	[t1].[FirstName],
	[t1].[Title],
	[t1].[TitleOfCourtesy],
	[t1].[BirthDate],
	[t1].[HireDate],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[HomePhone],
	[t1].[Extension],
	[t1].[Photo],
	[t1].[Notes],
	[t1].[ReportsTo],
	[t1].[PhotoPath]
FROM
	[Employees] [t1]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[OrderID],
	[t1].[CustomerID],
	[t1].[EmployeeID],
	[t1].[OrderDate],
	[t1].[RequiredDate],
	[t1].[ShippedDate],
	[t1].[ShipVia],
	[t1].[Freight],
	[t1].[ShipName],
	[t1].[ShipAddress],
	[t1].[ShipCity],
	[t1].[ShipRegion],
	[t1].[ShipPostalCode],
	[t1].[ShipCountry]
FROM
	[Orders] [t1]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[Discontinued],
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel]
FROM
	[Products] [t1]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_Order].[OrderID],
	[a_Order].[CustomerID],
	[a_Order].[EmployeeID],
	[a_Order].[OrderDate],
	[a_Order].[RequiredDate],
	[a_Order].[ShippedDate],
	[a_Order].[ShipVia],
	[a_Order].[Freight],
	[a_Order].[ShipName],
	[a_Order].[ShipAddress],
	[a_Order].[ShipCity],
	[a_Order].[ShipRegion],
	[a_Order].[ShipPostalCode],
	[a_Order].[ShipCountry],
	[a_Product].[ProductID],
	[a_Product].[Discontinued],
	[a_Product].[ProductName],
	[a_Product].[SupplierID],
	[a_Product].[CategoryID],
	[a_Product].[QuantityPerUnit],
	[a_Product].[UnitPrice],
	[a_Product].[UnitsInStock],
	[a_Product].[UnitsOnOrder],
	[a_Product].[ReorderLevel]
FROM
	[Order Details] [od]
		LEFT JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]
		LEFT JOIN [Categories] [a_Category] ON ([a_Product].[CategoryID] = [a_Category].[CategoryID] OR [a_Product].[CategoryID] IS NULL AND [a_Category].[CategoryID] IS NULL)
		LEFT JOIN [Orders] [a_Order] ON [od].[OrderID] = [a_Order].[OrderID]
WHERE
	[a_Category].[CategoryName] = 'Seafood'

