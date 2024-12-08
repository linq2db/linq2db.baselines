BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4458Item]', N'U') IS NOT NULL)
	DROP TABLE [Issue4458Item]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4458Item]', N'U') IS NULL)
	CREATE TABLE [Issue4458Item]
	(
		[Id] NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id NVarChar(4000) -- String
SET     @Id = N'1'

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id NVarChar(4000) -- String
SET     @Id = N'2'

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id NVarChar(4000) -- String
SET     @Id = N'3'

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WarehouseStock]', N'U') IS NOT NULL)
	DROP TABLE [WarehouseStock]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WarehouseStock]', N'U') IS NULL)
	CREATE TABLE [WarehouseStock]
	(
		[ItemId]            NVarChar(4000) NOT NULL,
		[QuantityAvailable] Int            NOT NULL,
		[WarehouseId]       NVarChar(4000) NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @ItemId NVarChar(4000) -- String
SET     @ItemId = N'1'
DECLARE @QuantityAvailable Int -- Int32
SET     @QuantityAvailable = 10
DECLARE @WarehouseId NVarChar(4000) -- String
SET     @WarehouseId = N'A'

INSERT INTO [WarehouseStock]
(
	[ItemId],
	[QuantityAvailable],
	[WarehouseId]
)
VALUES
(
	@ItemId,
	@QuantityAvailable,
	@WarehouseId
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Review]', N'U') IS NOT NULL)
	DROP TABLE [Review]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Review]', N'U') IS NULL)
	CREATE TABLE [Review]
	(
		[ItemId] NVarChar(4000) NOT NULL,
		[UserId] NVarChar(4000) NOT NULL,
		[Score]  Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @ItemId NVarChar(4000) -- String
SET     @ItemId = N'1'
DECLARE @UserId NVarChar(4000) -- String
SET     @UserId = N'1'
DECLARE @Score Int -- Int32
SET     @Score = 100

INSERT INTO [Review]
(
	[ItemId],
	[UserId],
	[Score]
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @ItemId NVarChar(4000) -- String
SET     @ItemId = N'1'
DECLARE @UserId NVarChar(4000) -- String
SET     @UserId = N'2'
DECLARE @Score Int -- Int32
SET     @Score = 90

INSERT INTO [Review]
(
	[ItemId],
	[UserId],
	[Score]
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @ItemId NVarChar(4000) -- String
SET     @ItemId = N'2'
DECLARE @UserId NVarChar(4000) -- String
SET     @UserId = N'1'
DECLARE @Score Int -- Int32
SET     @Score = 89

INSERT INTO [Review]
(
	[ItemId],
	[UserId],
	[Score]
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @ItemId NVarChar(4000) -- String
SET     @ItemId = N'2'
DECLARE @UserId NVarChar(4000) -- String
SET     @UserId = N'4'
DECLARE @Score Int -- Int32
SET     @Score = 93

INSERT INTO [Review]
(
	[ItemId],
	[UserId],
	[Score]
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @ItemId NVarChar(4000) -- String
SET     @ItemId = N'3'
DECLARE @UserId NVarChar(4000) -- String
SET     @UserId = N'5'
DECLARE @Score Int -- Int32
SET     @Score = 91

INSERT INTO [Review]
(
	[ItemId],
	[UserId],
	[Score]
)
VALUES
(
	@ItemId,
	@UserId,
	@Score
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Review]', N'U') IS NOT NULL)
	DROP TABLE [Review]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[WarehouseStock]', N'U') IS NOT NULL)
	DROP TABLE [WarehouseStock]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Issue4458Item]', N'U') IS NOT NULL)
	DROP TABLE [Issue4458Item]

