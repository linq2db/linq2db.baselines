BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[p].[ProductID],
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
	[Products] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[od].[OrderID]
			FROM
				[Order Details] [od]
					LEFT JOIN [Products] [a_Product] ON [od].[ProductID] = [a_Product].[ProductID]
			WHERE
				[a_Product].[ProductID] = [p].[ProductID]
			ORDER BY
				[od].[UnitPrice] * [od].[Quantity] DESC
		) [t1]
		LEFT JOIN [Orders] [a_Order] ON [t1].[OrderID] = [a_Order].[OrderID]

