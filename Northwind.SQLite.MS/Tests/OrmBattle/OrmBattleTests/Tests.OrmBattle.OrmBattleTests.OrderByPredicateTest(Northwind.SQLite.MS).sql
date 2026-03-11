-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[o].[OrderID]
FROM
	[Orders] [o]
ORDER BY
	[o].[Freight] > 0 AND [o].[ShippedDate] IS NOT NULL,
	[o].[OrderID]

