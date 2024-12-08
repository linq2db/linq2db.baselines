BeforeExecute
-- SqlCe

DROP TABLE [Issue4458Item]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4458Item]
(
	[Id] NVarChar(255) NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue4458Item]
(
	[Id]
)
SELECT '1' UNION ALL
SELECT '2' UNION ALL
SELECT '3'

BeforeExecute
-- SqlCe

DROP TABLE [WarehouseStock]

BeforeExecute
-- SqlCe

CREATE TABLE [WarehouseStock]
(
	[ItemId]            NVarChar(255) NOT NULL,
	[QuantityAvailable] Int           NOT NULL,
	[WarehouseId]       NVarChar(255) NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [WarehouseStock]
(
	[ItemId],
	[QuantityAvailable],
	[WarehouseId]
)
SELECT '1',10,'A'

BeforeExecute
-- SqlCe

DROP TABLE [Review]

BeforeExecute
-- SqlCe

CREATE TABLE [Review]
(
	[ItemId] NVarChar(255) NOT NULL,
	[UserId] NVarChar(255) NOT NULL,
	[Score]  Int           NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [Review]
(
	[ItemId],
	[UserId],
	[Score]
)
SELECT '1','1',100 UNION ALL
SELECT '1','2',90 UNION ALL
SELECT '2','1',89 UNION ALL
SELECT '2','4',93 UNION ALL
SELECT '3','5',91

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

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
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[i].[Id],
	[t1].[SUM_1]
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
				SUM([s].[QuantityAvailable]) as [SUM_1]
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

BeforeExecute
-- SqlCe

DROP TABLE [Review]

BeforeExecute
-- SqlCe

DROP TABLE [WarehouseStock]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4458Item]

