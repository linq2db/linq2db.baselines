-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 10

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
	strftime('%Y-%m-%d %H:%M:%f', [o].[OrderDate]) > strftime('%Y-%m-%d %H:%M:%f', '1997-01-01 00:00:00.000')
ORDER BY
	[o].[OrderDate],
	[o].[OrderID]
LIMIT @take

