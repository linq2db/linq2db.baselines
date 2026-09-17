-- SQLite.MS SQLite
INSERT INTO [OffsetKeyRow]
(
	[Id],
	[Value]
)
VALUES
(
	'2026-09-15 12:00:00.1234567+05:45',
	1
)

-- SQLite.MS SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2026-09-15 12:00:00.1234567+05:45'
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [OffsetKeyRow] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [t1]

-- SQLite.MS SQLite
SELECT
	[r].[Value]
FROM
	[OffsetKeyRow] [r]
LIMIT 2

-- SQLite.MS SQLite
SELECT CAST([Id] AS TEXT) FROM [OffsetKeyRow]

