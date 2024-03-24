BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[o].[OrderID],
	[o].[CustomerID],
	[o].[EmployeeID],
	[o].[OrderDate],
	[o].[RequiredDate],
	[o].[ShippedDate],
	[o].[ShipVia],
	[o].[Freight],
	[o].[ShipName],
	[o].[ShipAddress],
	[o].[ShipCity],
	[o].[ShipRegion],
	[o].[ShipPostalCode],
	[o].[ShipCountry]
FROM
	[Orders] [o]
WHERE
	(Asin(Cos(Cast([o].[OrderID] as Float))) = 0 OR [o].[OrderID] > 0)
LIMIT @take

