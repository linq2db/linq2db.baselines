-- SQLite.Classic SQLite
DECLARE @key NVarChar(255) -- String
SET     @key = '09/15/2026 12:00:00 +05:45'

INSERT INTO [OffsetKeyRow] ([Id], [Value]) VALUES (@key, 1)

-- SQLite.Classic SQLite
DECLARE @Id VarChar(25) -- AnsiString
SET     @Id = '2026-09-15 12:00:00+05:45'
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

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [t1]

-- SQLite.Classic SQLite
SELECT CAST([Id] AS TEXT) FROM [OffsetKeyRow] ORDER BY [Value]

-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[OffsetKeyRow] [r]
ORDER BY
	[r].[Value]

