-- SQLite.MS SQLite
SELECT
	[item_1].[No],
	[g_3].[Qty]
FROM
	[InventoryItem] [item_1]
		LEFT JOIN (
			SELECT
				[g_2].[Key_1],
				SUM([g_2].[Quantity]) as [Qty]
			FROM
				(
					SELECT
						Substr([g_1].[Code], 1, 3) as [Key_1],
						[g_1].[Quantity]
					FROM
						[StockEntry] [g_1]
				) [g_2]
			GROUP BY
				[g_2].[Key_1]
		) [g_3] ON [g_3].[Key_1] = [item_1].[No]

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[InventoryItem] [t1]

