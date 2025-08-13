BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[p].[ProductID],
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
	[Products] [p]
		OUTER APPLY (
			SELECT TOP (1)
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
				[a_Order].[ShipCountry]
			FROM
				[Order Details] [od]
					LEFT JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]
					LEFT JOIN [Orders] [a_Order] ON [od].[OrderID] = [a_Order].[OrderID]
			WHERE
				[a_Product].[ProductID] = [p].[ProductID]
			ORDER BY
				[od].[UnitPrice] * [od].[Quantity] DESC
		) [t1]

