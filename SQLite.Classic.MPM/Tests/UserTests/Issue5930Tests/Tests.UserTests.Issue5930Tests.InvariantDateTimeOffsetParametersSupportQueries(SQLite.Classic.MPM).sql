-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id VarChar(29) -- AnsiString
SET     @Id = '2026-09-15 12:00:00.000+05:45'
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 2
DECLARE @Id VarChar(29) -- AnsiString
SET     @Id = '2026-09-15 12:00:00.000+05:45'

UPDATE
	[OffsetKeyRow]
SET
	[Value] = @Value
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [OffsetKeyRow].[Id]) = strftime('%Y-%m-%d %H:%M:%f', @Id)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @value VarChar(29) -- AnsiString
SET     @value = '2026-09-15 12:00:00.000+05:45'

SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Id]) = strftime('%Y-%m-%d %H:%M:%f', @value)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p VarChar(29) -- AnsiString
SET     @p = '2026-09-15 12:01:00.000+05:45'

SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Id]) < strftime('%Y-%m-%d %H:%M:%f', @p)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @otherOffset VarChar(29) -- AnsiString
SET     @otherOffset = '2026-09-15 02:15:00.000-04:00'

SELECT
	CAST(CAST(Round((JulianDay([r].[Id]) - JulianDay(@otherOffset)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
FROM
	[OffsetKeyRow] [r]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @TotalHours VarChar(29) -- AnsiString
SET     @TotalHours = '2026-09-15 00:15:00.000-04:00'

SELECT
	CAST(CAST(Round((JulianDay([r].[Id]) - JulianDay(@TotalHours)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
FROM
	[OffsetKeyRow] [r]
LIMIT 2

