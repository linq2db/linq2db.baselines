-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000 > 0

-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay(@asOf)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000 > 0

-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST(CAST(Round((JulianDay(@asOf) - JulianDay([r].[ClosedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 600000000

-- SQLite.MS SQLite
DECLARE @asOf  -- DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	CAST(CAST(Round((JulianDay([r].[ClosedOn]) - JulianDay(@asOf)) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

