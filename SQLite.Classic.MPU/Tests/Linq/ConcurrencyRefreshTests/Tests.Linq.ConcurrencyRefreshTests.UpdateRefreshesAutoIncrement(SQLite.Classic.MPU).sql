-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyRefreshAutoInc]
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = 5

UPDATE
	[ConcurrencyRefreshAutoInc]
SET
	[Stamp] = [ConcurrencyRefreshAutoInc].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyRefreshAutoInc].[Id] = @Id AND [ConcurrencyRefreshAutoInc].[Stamp] = @Stamp
RETURNING
	[ConcurrencyRefreshAutoInc].[Stamp]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyRefreshAutoInc] [t1]
LIMIT 2

