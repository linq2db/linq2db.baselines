-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay(@asOf)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 0

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 600000000

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay(@asOf)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

