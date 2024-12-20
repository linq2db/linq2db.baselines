BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4458Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4458Item]
(
	[Id] NVarChar(255) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id NVarChar(1) -- String
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
-- SQLite.MS SQLite
DECLARE @Id NVarChar(1) -- String
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
-- SQLite.MS SQLite
DECLARE @Id NVarChar(1) -- String
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WarehouseStock]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [WarehouseStock]
(
	[ItemId]            NVarChar(255) NOT NULL,
	[QuantityAvailable] INTEGER       NOT NULL,
	[WarehouseId]       NVarChar(255) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ItemId NVarChar(1) -- String
SET     @ItemId = '1'
DECLARE @QuantityAvailable  -- Int32
SET     @QuantityAvailable = 10
DECLARE @WarehouseId NVarChar(1) -- String
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Review]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Review]
(
	[ItemId] NVarChar(255) NOT NULL,
	[UserId] NVarChar(255) NOT NULL,
	[Score]  INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ItemId NVarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId NVarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score  -- Int32
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
-- SQLite.MS SQLite
DECLARE @ItemId NVarChar(1) -- String
SET     @ItemId = '1'
DECLARE @UserId NVarChar(1) -- String
SET     @UserId = '2'
DECLARE @Score  -- Int32
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
-- SQLite.MS SQLite
DECLARE @ItemId NVarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId NVarChar(1) -- String
SET     @UserId = '1'
DECLARE @Score  -- Int32
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
-- SQLite.MS SQLite
DECLARE @ItemId NVarChar(1) -- String
SET     @ItemId = '2'
DECLARE @UserId NVarChar(1) -- String
SET     @UserId = '4'
DECLARE @Score  -- Int32
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
-- SQLite.MS SQLite
DECLARE @ItemId NVarChar(1) -- String
SET     @ItemId = '3'
DECLARE @UserId NVarChar(1) -- String
SET     @UserId = '5'
DECLARE @Score  -- Int32
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
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[i].[Id],
	(
		SELECT
			SUM([s].[QuantityAvailable])
		FROM
			[WarehouseStock] [s]
		WHERE
			(
				SELECT
					[stock].[ItemId]
				FROM
					[WarehouseStock] [stock]
				WHERE
					[stock].[ItemId] = [i].[Id]
				GROUP BY
					[stock].[ItemId]
			) = [s].[ItemId] AND
			[s].[ItemId] = [i].[Id]
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
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Review]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [WarehouseStock]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4458Item]

