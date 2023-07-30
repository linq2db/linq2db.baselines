BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConcurrencyFiltered]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ConcurrencyFiltered]
(
	[Id]    INTEGER       NOT NULL,
	[Stamp] INTEGER       NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyFiltered] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyFiltered]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered]
SET
	[Stamp] = [ConcurrencyFiltered].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyFiltered].[Id] = 2 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered]
SET
	[Stamp] = [ConcurrencyFiltered].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyFiltered].[Id] = 1 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyFiltered]
WHERE
	[ConcurrencyFiltered].[Id] = 2 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyFiltered]
WHERE
	[ConcurrencyFiltered].[Id] = 1 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ConcurrencyFiltered]

