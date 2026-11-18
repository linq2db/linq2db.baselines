-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST(CAST(Round((JulianDay(@asOf) - JulianDay([MeasuredPeriodRow].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST(CAST(Round((JulianDay([MeasuredPeriodRow].[ClosedOn]) - JulianDay(@asOf)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]
LIMIT 2

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @asOf VarChar(23) -- AnsiString
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay(@asOf)) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000

