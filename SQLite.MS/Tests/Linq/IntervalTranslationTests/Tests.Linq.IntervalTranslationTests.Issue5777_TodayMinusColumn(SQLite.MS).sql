-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(CAST(Round((JulianDay('2026-10-01 00:00:00.000') - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 0

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(CAST(Round((JulianDay('2026-10-01 00:00:00.000') - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 0

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(CAST(Round((JulianDay('2026-10-01 00:00:00.000') - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 600000000 > 0

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(Round((JulianDay('2026-10-01 00:00:00.000') - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000) / 864000000000 AS INTEGER) > 0

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(CAST(Round((JulianDay('2026-10-01 00:00:00.000') - JulianDay([r].[ClosedOnNullable])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 0

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST(CAST(Round((JulianDay('2026-10-01 00:00:00.000') - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000

-- SQLite.MS SQLite
SELECT
	CAST(CAST(Round((JulianDay('2026-10-01 00:00:00.000') - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

