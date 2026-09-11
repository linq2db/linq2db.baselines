-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTimeOffset
SET     @StartedOn = '2026-01-01 10:00:00.000+00:00'
DECLARE @FinishedOn  -- DateTimeOffset
SET     @FinishedOn = '2026-01-03 15:04:05.006+02:00'

INSERT INTO [ZonedEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- SQLite.MS SQLite
SELECT
	CAST((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 864000000000 AS INTEGER),
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 36000000000) % 24 AS INTEGER),
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 600000000) % 60 AS INTEGER),
	CAST(((CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000000) % 60 AS INTEGER),
	CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000,
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 864000000000,
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 36000000000,
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 600000000,
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 10000000,
	CAST(CAST(Round((JulianDay([r].[FinishedOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000 AS Float) / 10000
FROM
	[ZonedEventRow] [r]
LIMIT 2

