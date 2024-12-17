BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4458Item') IS NOT NULL)
	DROP TABLE [Issue4458Item]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4458Item') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue4458Item]
		(
			[Id] NVarChar(255) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4458Item]
(
	[Id]
)
SELECT '1' UNION ALL
SELECT '2' UNION ALL
SELECT '3'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WarehouseStock') IS NOT NULL)
	DROP TABLE [WarehouseStock]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WarehouseStock') IS NULL)
	EXECUTE('
		CREATE TABLE [WarehouseStock]
		(
			[ItemId]            NVarChar(255) NOT NULL,
			[QuantityAvailable] Int           NOT NULL,
			[WarehouseId]       NVarChar(255) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [WarehouseStock]
(
	[ItemId],
	[QuantityAvailable],
	[WarehouseId]
)
SELECT '1',10,'A'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Review') IS NOT NULL)
	DROP TABLE [Review]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Review') IS NULL)
	EXECUTE('
		CREATE TABLE [Review]
		(
			[ItemId] NVarChar(255) NOT NULL,
			[UserId] NVarChar(255) NOT NULL,
			[Score]  Int           NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

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
			 EXISTS (
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
-- Sybase.Managed Sybase

SELECT
	[i].[Id],
	(
		SELECT
			SUM([s].[QuantityAvailable])
		FROM
			[WarehouseStock] [s]
		WHERE
			[s].[ItemId] = [i].[Id] AND (
				SELECT
					[stock].[ItemId]
				FROM
					[WarehouseStock] [stock]
				WHERE
					[stock].[ItemId] = [i].[Id]
				GROUP BY
					[stock].[ItemId]
			) = [s].[ItemId]
	)
FROM
	[Issue4458Item] [i]
WHERE
	 EXISTS (
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [i].[Id] AND [r].[Score] > 95
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Review') IS NOT NULL)
	DROP TABLE [Review]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'WarehouseStock') IS NOT NULL)
	DROP TABLE [WarehouseStock]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue4458Item') IS NOT NULL)
	DROP TABLE [Issue4458Item]

