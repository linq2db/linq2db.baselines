﻿BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[a_Order].[ShipCountry],
	[a_Order].[ShipPostalCode],
	[a_Order].[ShipRegion],
	[a_Order].[ShipCity],
	[a_Order].[ShipAddress],
	[a_Order].[ShipName],
	[a_Order].[Freight],
	[a_Order].[ShipVia],
	[a_Order].[ShippedDate],
	[a_Order].[RequiredDate],
	[a_Order].[OrderDate],
	[a_Order].[EmployeeID],
	[a_Order].[CustomerID],
	[a_Order].[OrderID],
	[a_Product].[ProductID],
	[a_Product].[ProductName],
	[a_Product].[SupplierID],
	[a_Product].[CategoryID],
	[a_Product].[QuantityPerUnit],
	[a_Product].[UnitPrice],
	[a_Product].[UnitsInStock],
	[a_Product].[UnitsOnOrder],
	[a_Product].[ReorderLevel],
	[a_Product].[Discontinued]
FROM
	[Order Details] [od]
		LEFT JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]
		LEFT JOIN [Categories] [a_Category] ON [a_Product].[CategoryID] = [a_Category].[CategoryID]
		LEFT JOIN [Orders] [a_Order] ON [od].[OrderID] = [a_Order].[OrderID]
WHERE
	[a_Category].[CategoryName] = N'Seafood'

