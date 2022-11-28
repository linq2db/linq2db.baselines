BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t2].[ShipCountry],
	[t2].[ShipPostalCode],
	[t2].[ShipRegion],
	[t2].[ShipCity],
	[t2].[ShipAddress],
	[t2].[ShipName],
	[t2].[Freight],
	[t2].[ShipVia],
	[t2].[ShippedDate],
	[t2].[RequiredDate],
	[t2].[OrderDate],
	[t2].[EmployeeID],
	[t2].[CustomerID],
	[t2].[OrderID]
FROM
	[Customers] [c_1]
		OUTER APPLY (
			SELECT TOP (@take)
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
			WHERE
				([c_1].[CustomerID] = [t1].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [t1].[CustomerID] IS NULL)
		) [t2]

