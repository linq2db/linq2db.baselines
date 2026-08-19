-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Stamp  -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyRefreshNoLock]
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

-- SQLite.MS SQLite
DECLARE @Stamp  -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[ConcurrencyRefreshNoLock]
SET
	[Stamp] = @Stamp,
	[Value] = @Value
WHERE
	[ConcurrencyRefreshNoLock].[Id] = @Id

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Stamp],
	[r].[Value]
FROM
	[ConcurrencyRefreshNoLock] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

