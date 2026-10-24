-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'
DECLARE @FinishedOn VarChar(23) -- AnsiString
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[EventRow] [r]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[FinishedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[EventRow] [r]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08) < strftime('%Y-%m-%d %H:%M:%f', [r].[FinishedOn])

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[FinishedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08) > strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], '1 Hour'))

