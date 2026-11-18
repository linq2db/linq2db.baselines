-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(CAST(Round((JulianDay([r].[ClosedOnNullable]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 0

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(CAST(Round((JulianDay([r].[ClosedOnNullable]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 0

-- SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[ClosedOnNullable])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 0

-- SQLite.Classic SQLite
SELECT
	CAST(CAST(Round((JulianDay([r].[ClosedOnNullable]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(Round((JulianDay([r].[ClosedOnNullable]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000) / 864000000000 AS INTEGER) > 0

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(((CAST(Round((JulianDay([r].[ClosedOnNullable]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER) > 0

-- SQLite.Classic SQLite
SELECT
	CAST((CAST(Round((JulianDay([r].[ClosedOnNullable]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000) / 864000000000 AS INTEGER),
	CAST(((CAST(Round((JulianDay([r].[ClosedOnNullable]) - JulianDay([r].[OpenedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER)
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	[r].[Id]

