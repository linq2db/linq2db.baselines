-- SQLite.Classic SQLite
SELECT
	[item_1].[No],
	Substr([d_1].[Code], 1, 3)
FROM
	[InventoryItem] [item_1]
		LEFT JOIN (
			SELECT DISTINCT
				Substr([d].[Code], 1, 3) as [c1],
				[d].[Code]
			FROM
				[StockEntry] [d]
		) [d_1] ON [d_1].[c1] = [item_1].[No]

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[InventoryItem] [t1]
		LEFT JOIN (
			SELECT DISTINCT
				Substr([d].[Code], 1, 3) as [c1],
				[d].[Code]
			FROM
				[StockEntry] [d]
		) [d_1] ON [d_1].[c1] = [t1].[No]

