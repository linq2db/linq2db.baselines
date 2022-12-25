BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConcurrencyTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ConcurrencyTable]
(
	[Id]    INTEGER       NOT NULL,
	[Stamp] INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO [ConcurrencyTable]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	@Id,
	@Stamp,
	@Value_1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyTable]
SET
	[Stamp] = [ConcurrencyTable].[Stamp] + 1,
	[Value] = @Value_1
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable]
SET
	[Stamp] = [ConcurrencyTable].[Stamp] + 1,
	[Value] = @Value_1
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable]
SET
	[Stamp] = [ConcurrencyTable].[Stamp] + 1,
	[Value] = @Value_1
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyTable]
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -8

DELETE FROM
	[ConcurrencyTable]
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConcurrencyTable]

