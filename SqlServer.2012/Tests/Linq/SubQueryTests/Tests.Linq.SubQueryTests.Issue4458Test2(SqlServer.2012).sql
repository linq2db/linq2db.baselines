BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4458Item]', N'U') IS NOT NULL)
	DROP TABLE [Issue4458Item]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4458Item]', N'U') IS NULL)
	CREATE TABLE [Issue4458Item]
	(
		[Id] NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(N'1'),
(N'2'),
(N'3')

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[WarehouseStock]', N'U') IS NOT NULL)
	DROP TABLE [WarehouseStock]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[WarehouseStock]', N'U') IS NULL)
	CREATE TABLE [WarehouseStock]
	(
		[ItemId]            NVarChar(4000) NOT NULL,
		[QuantityAvailable] Int            NOT NULL,
		[WarehouseId]       NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [WarehouseStock]
(
	[ItemId],
	[QuantityAvailable],
	[WarehouseId]
)
VALUES
(N'1',10,N'A')

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Review]', N'U') IS NOT NULL)
	DROP TABLE [Review]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Review]', N'U') IS NULL)
	CREATE TABLE [Review]
	(
		[ItemId] NVarChar(4000) NOT NULL,
		[UserId] NVarChar(4000) NOT NULL,
		[Score]  Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Review]
(
	[ItemId],
	[UserId],
	[Score]
)
VALUES
(N'1',N'1',100),
(N'1',N'2',90),
(N'2',N'1',89),
(N'2',N'4',93),
(N'3',N'5',91)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

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
	EXISTS(
		SELECT
			*
		FROM
			[Review] [r]
		WHERE
			[r].[ItemId] = [i].[Id] AND [r].[Score] > 95
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Review]', N'U') IS NOT NULL)
	DROP TABLE [Review]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[WarehouseStock]', N'U') IS NOT NULL)
	DROP TABLE [WarehouseStock]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue4458Item]', N'U') IS NOT NULL)
	DROP TABLE [Issue4458Item]

