-- SqlServer.Northwind.MS SqlServer.2019

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
	[Customers] [c_1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Orders].[OrderID],
				[a_Orders].[CustomerID],
				[a_Orders].[EmployeeID],
				[a_Orders].[OrderDate],
				[a_Orders].[RequiredDate],
				[a_Orders].[ShippedDate],
				[a_Orders].[ShipVia],
				[a_Orders].[Freight],
				[a_Orders].[ShipName],
				[a_Orders].[ShipAddress],
				[a_Orders].[ShipCity],
				[a_Orders].[ShipRegion],
				[a_Orders].[ShipPostalCode],
				[a_Orders].[ShipCountry]
			FROM
				[Orders] [a_Orders]
			WHERE
				[c_1].[CustomerID] = [a_Orders].[CustomerID]
		) [t1]

