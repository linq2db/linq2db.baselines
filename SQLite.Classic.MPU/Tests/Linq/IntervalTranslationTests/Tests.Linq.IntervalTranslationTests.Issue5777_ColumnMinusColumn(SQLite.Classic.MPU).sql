-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 < 12

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000,
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000,
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 600000000,
	CAST((CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000) / 864000000000 AS INTEGER),
	CAST(((CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER)
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

