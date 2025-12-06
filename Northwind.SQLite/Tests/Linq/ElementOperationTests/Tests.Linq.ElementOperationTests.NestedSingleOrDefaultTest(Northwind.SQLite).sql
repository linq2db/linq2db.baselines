-- Northwind.SQLite SQLite.Classic SQLite

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
		LEFT JOIN (
			SELECT
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
				[a_Orders].[ShipCountry],
				ROW_NUMBER() OVER (PARTITION BY [a_Orders].[CustomerID] ORDER BY [a_Orders].[CustomerID]) as [rn]
			FROM
				[Orders] [a_Orders]
		) [t1] ON [c_1].[CustomerID] = [t1].[CustomerID] AND [t1].[rn] <= 1

