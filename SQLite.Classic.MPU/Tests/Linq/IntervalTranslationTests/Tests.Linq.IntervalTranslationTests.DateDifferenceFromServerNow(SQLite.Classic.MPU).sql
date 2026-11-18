-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(CAST(Round((JulianDay(DATETIME('now', 'localtime')) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 300

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST(CAST(Round((JulianDay(DATETIME('now', 'localtime')) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay(DATETIME('now', 'localtime')) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000,
	CAST(((CAST(Round((JulianDay(DATETIME('now', 'localtime')) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER)
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

