-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[item_1].[Id],
	[stock_1].[TotalAvailable]
FROM
	[Issue4458Item] [item_1]
		LEFT JOIN (
			SELECT
				SUM([stock].[QuantityAvailable]) as [TotalAvailable],
				[stock].[ItemId]
			FROM
				[WarehouseStock] [stock]
			GROUP BY
				[stock].[ItemId]
		) [stock_1] ON [stock_1].[ItemId] = [item_1].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[Issue4458Item] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ItemId],
	[t1].[QuantityAvailable],
	[t1].[WarehouseId]
FROM
	[WarehouseStock] [t1]

