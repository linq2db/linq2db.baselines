BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
		INNER JOIN [Review] [d] ON ([d].[ItemId] = [m_1].[Id])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[i].[Id],
	(
		SELECT
			SUM([stock].[QuantityAvailable])
		FROM
			[WarehouseStock] [stock]
		WHERE
			[stock].[ItemId] = [i].[Id]
		GROUP BY
			[stock].[ItemId]
	)
FROM
	[Issue4458Item] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [i].[Id] AND [r].[Score] > 95
	)

