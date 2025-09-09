﻿BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[Id],
	[d].[ItemId],
	[d].[UserId],
	[d].[Score]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Issue4458Item] [t1]
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					[Review] [r]
				WHERE
					[r].[ItemId] = [t1].[Id] AND [r].[Score] > 95
			)
	) [m_1]
		INNER JOIN [Review] [d] ON [d].[ItemId] = [m_1].[Id]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[i].[Id],
	[t1].[TotalAvailable]
FROM
	[Issue4458Item] [i]
		LEFT JOIN (
			SELECT
				[stock].[ItemId]
			FROM
				[WarehouseStock] [stock]
			GROUP BY
				[stock].[ItemId]
		) [stock_1] ON [stock_1].[ItemId] = [i].[Id]
		OUTER APPLY (
			SELECT
				SUM([s].[QuantityAvailable]) as [TotalAvailable]
			FROM
				[WarehouseStock] [s]
			WHERE
				[s].[ItemId] = [i].[Id] AND [stock_1].[ItemId] = [s].[ItemId]
		) [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [i].[Id] AND [r].[Score] > 95
	)

