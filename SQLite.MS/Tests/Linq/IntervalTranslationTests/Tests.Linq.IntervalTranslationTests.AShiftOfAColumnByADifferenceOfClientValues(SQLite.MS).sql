-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = '2026-01-01 12:00:00.000'

INSERT INTO [EventRow]
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
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[EventRow] [r]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[FinishedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[EventRow] [r]
LIMIT 2

-- SQLite.MS SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08) < strftime('%Y-%m-%d %H:%M:%f', [r].[FinishedOn])

-- SQLite.MS SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[FinishedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08) > strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], '1 Hour'))

