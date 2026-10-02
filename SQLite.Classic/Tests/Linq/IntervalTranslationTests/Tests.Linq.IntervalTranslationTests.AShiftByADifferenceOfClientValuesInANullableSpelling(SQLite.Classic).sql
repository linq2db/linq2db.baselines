-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DueOn VarChar(23) -- AnsiString
SET     @DueOn = '2026-01-01 10:00:00.000'
DECLARE @StartedOn VarChar(23) -- AnsiString
SET     @StartedOn = '2026-01-01 10:00:00.000'

INSERT INTO [OptionalDueRow]
(
	[Id],
	[DueOn],
	[StartedOn]
)
VALUES
(
	@Id,
	@DueOn,
	@StartedOn
)

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[DueOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[OptionalDueRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[OptionalDueRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[DueOn]) + Round(CAST(CAST(@Ticks AS INTEGER) * -1 AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[OptionalDueRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	Strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(NULL AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08)
FROM
	[OptionalDueRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[DueOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08) > strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], '1 Hour'))

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', JulianDay([r].[StartedOn]) + Round(CAST(CAST(@Ticks AS INTEGER) AS Float) * 0.0001) * 1.1574074074074074E-08) < strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], '1 Hour'))

