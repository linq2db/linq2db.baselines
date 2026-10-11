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
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DueOn  -- DateTime
SET     @DueOn = NULL
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
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @DueOn VarChar(23) -- AnsiString
SET     @DueOn = '2026-01-01 12:00:00.000'
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
	strftime('%Y-%m-%d %H:%M:%f', [r].[DueOn], CAST(CAST(CAST(@Ticks AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(@Ticks AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[DueOn], CAST(CAST((CAST(@Ticks AS INTEGER) / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(NULL AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[DueOn], CAST(CAST(CAST(@Ticks AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[DueOn], CAST(CAST(CAST(@Ticks AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') > strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], '1 Hour')
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1 AND strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(@Ticks AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') < strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], '1 Hour')

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(@Ticks AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(NULL AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Ticks  -- Int64
SET     @Ticks = 72002500000

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartedOn], CAST(CAST(CAST(@Ticks AS INTEGER) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[DueOn], CAST(CAST((CAST(Round((JulianDay([r].[DueOn]) - JulianDay([r].[StartedOn])) * 86400000) AS INTEGER) * 10000) / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

