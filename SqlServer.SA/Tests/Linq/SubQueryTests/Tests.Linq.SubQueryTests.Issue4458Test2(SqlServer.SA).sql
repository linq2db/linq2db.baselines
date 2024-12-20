﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4458Item]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4458Item]', N'U') IS NULL)
	CREATE TABLE [Issue4458Item]
	(
		[Id] NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(N'1'),
(N'2'),
(N'3')

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [WarehouseStock]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[WarehouseStock]', N'U') IS NULL)
	CREATE TABLE [WarehouseStock]
	(
		[ItemId]            NVarChar(4000) NOT NULL,
		[QuantityAvailable] Int            NOT NULL,
		[WarehouseId]       NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [WarehouseStock]
(
	[ItemId],
	[QuantityAvailable],
	[WarehouseId]
)
VALUES
(N'1',10,N'A')

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Review]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Review]', N'U') IS NULL)
	CREATE TABLE [Review]
	(
		[ItemId] NVarChar(4000) NOT NULL,
		[UserId] NVarChar(4000) NOT NULL,
		[Score]  Int            NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Review]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [WarehouseStock]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4458Item]

