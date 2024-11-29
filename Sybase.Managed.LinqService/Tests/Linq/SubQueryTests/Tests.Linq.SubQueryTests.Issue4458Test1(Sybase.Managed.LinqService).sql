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
DECLARE @Id UniVarChar(1) -- String
SET     @Id = '1'

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id UniVarChar(1) -- String
SET     @Id = '2'

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id UniVarChar(1) -- String
SET     @Id = '3'

INSERT INTO [Issue4458Item]
(
	[Id]
)
VALUES
(
	@Id
)

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
DECLARE @ItemId UniVarChar(1) -- String
SET     @ItemId = '1'
DECLARE @QuantityAvailable Integer -- Int32
SET     @QuantityAvailable = 10
DECLARE @WarehouseId UniVarChar(1) -- String
SET     @WarehouseId = 'A'

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
DECLARE @ItemId UniVarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId UniVarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ItemId UniVarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId UniVarChar(1) -- String
SET     @UserId = '2'
DECLARE @Score Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ItemId UniVarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId UniVarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ItemId UniVarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId UniVarChar(1) -- String
SET     @UserId = '4'
DECLARE @Score Integer -- Int32
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
-- Sybase.Managed Sybase
DECLARE @ItemId UniVarChar(1) -- String
SET     @ItemId = '3'
DECLARE @UserId UniVarChar(1) -- String
SET     @UserId = '5'
DECLARE @Score Integer -- Int32
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
			EXISTS(
				SELECT
					1
				FROM
					[Review] [r]
				WHERE
					[r].[ItemId] = [t1].[Id] AND [r].[Score] > 95
			)
	) [m_1]
		INNER JOIN [Review] [d] ON [d].[ItemId] = [m_1].[Id]

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
	EXISTS(
		SELECT
			1
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

