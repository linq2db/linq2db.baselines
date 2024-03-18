BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite
DECLARE @OrderDate  -- DateTime
SET     @OrderDate = '1997-01-01'
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
	DateTime([o].[OrderDate]) > DateTime(@OrderDate)
ORDER BY
	[o].[OrderDate],
	[o].[OrderID]
LIMIT @take

