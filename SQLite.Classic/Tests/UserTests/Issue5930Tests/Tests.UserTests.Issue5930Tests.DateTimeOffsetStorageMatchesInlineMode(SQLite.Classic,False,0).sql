-- SQLite.Classic SQLite
DECLARE @Id VarChar(25) -- AnsiString
SET     @Id = '2026-09-15 12:00:00+05:45'
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [OffsetKeyRow]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic SQLite
INSERT INTO [OffsetKeyRow] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	'2026-09-15 12:00:00+05:45',
	2
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = 2

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [t1]

-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[OffsetKeyRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
SELECT CAST([Id] AS TEXT) FROM [OffsetKeyRow]

