-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Day  -- Date
SET     @Day = '2026-03-01 00:00:00.000'
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 15:30:00.250'

INSERT INTO [DatedEventRow]
(
	[Id],
	[Day],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@Day,
	@StartedOn,
	@FinishedOn
)

-- SQLite.MS SQLite
SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[Day]) + Round(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[DatedEventRow] [r]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[DatedEventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[Day]) + Round(CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) * 0.0001) * 1.1574074074074074E-08) > strftime('%Y-%m-%d %H:%M:%f', [r].[Day])

