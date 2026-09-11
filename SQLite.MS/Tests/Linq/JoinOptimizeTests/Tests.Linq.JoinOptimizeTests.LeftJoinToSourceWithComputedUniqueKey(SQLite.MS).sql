-- SQLite.MS SQLite
SELECT
	[item_1].[No],
	[s].[Quantity]
FROM
	[InventoryItem] [item_1]
		LEFT JOIN [StockEntry] [s] ON [s].[Code] = [item_1].[No]

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[InventoryItem] [t1]
		LEFT JOIN [StockEntry] [s] ON [s].[Code] = [t1].[No]

