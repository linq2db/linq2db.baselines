-- SqlCe

SELECT
	[m_1].[Id],
	[d].[ItemId],
	[d].[UserId],
	[d].[Score]
FROM
	[Issue4458Item] [m_1]
		INNER JOIN [Review] [d] ON [d].[ItemId] = [m_1].[Id]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [m_1].[Id] AND [r].[Score] > 95
	)

-- SqlCe

SELECT
	[i].[Id],
	[stock_1].[TotalAvailable]
FROM
	[Issue4458Item] [i]
		OUTER APPLY (
			SELECT
				SUM([stock].[QuantityAvailable]) as [TotalAvailable]
			FROM
				[WarehouseStock] [stock]
			WHERE
				[stock].[ItemId] = [i].[Id]
			GROUP BY
				[stock].[ItemId]
		) [stock_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [i].[Id] AND [r].[Score] > 95
	)

