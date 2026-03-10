-- SqlCe

SELECT
	[item_1].[Id],
	[stock_1].[TotalAvailable]
FROM
	[Issue4458Item] [item_1]
		OUTER APPLY (
			SELECT
				SUM([stock].[QuantityAvailable]) as [TotalAvailable]
			FROM
				[WarehouseStock] [stock]
			WHERE
				[stock].[ItemId] = [item_1].[Id]
			GROUP BY
				[stock].[ItemId]
		) [stock_1]

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[Issue4458Item] [t1]

-- SqlCe

SELECT
	[t1].[ItemId],
	[t1].[QuantityAvailable],
	[t1].[WarehouseId]
FROM
	[WarehouseStock] [t1]

