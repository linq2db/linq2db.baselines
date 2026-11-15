-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DueOn  -- DateTime2
SET     @DueOn = #2026-01-01 10:00:00#
DECLARE @StartedOn  -- DateTime2
SET     @StartedOn = #2026-01-01 10:00:00#

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DueOn  -- DateTime2
SET     @DueOn = NULL
DECLARE @StartedOn  -- DateTime2
SET     @StartedOn = #2026-01-01 10:00:00#

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @DueOn  -- DateTime2
SET     @DueOn = #2026-01-01 12:00:00#
DECLARE @StartedOn  -- DateTime2
SET     @StartedOn = #2026-01-01 10:00:00#

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd('ms', Fix(((@Ticks * -1) MOD 10000000) / 10000), DateAdd('s', Fix(((@Ticks * -1) MOD 864000000000) / 10000000), DateAdd('d', Fix((@Ticks * -1) / 864000000000), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	DateAdd('ms', Fix((NULL MOD 10000000) / 10000), DateAdd('s', Fix((NULL MOD 864000000000) / 10000000), DateAdd('d', Fix(NULL / 864000000000), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[DueOn]))) > DateAdd('h', 1, [r].[StartedOn])
ORDER BY
	[r].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1 AND DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[StartedOn]))) < DateAdd('h', 1, [r].[StartedOn])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	DateAdd('ms', Fix((NULL MOD 10000000) / 10000), DateAdd('s', Fix((NULL MOD 864000000000) / 10000000), DateAdd('d', Fix(NULL / 864000000000), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 72002500000

SELECT TOP 2
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateAdd('ms', Fix((((DateDiff_Big('d', [r].[StartedOn], [r].[DueOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[DueOn]), [r].[StartedOn]), [r].[DueOn]) * 10000) MOD 10000000) / 10000), DateAdd('s', Fix((((DateDiff_Big('d', [r].[StartedOn], [r].[DueOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[DueOn]), [r].[StartedOn]), [r].[DueOn]) * 10000) MOD 864000000000) / 10000000), DateAdd('d', Fix(((DateDiff_Big('d', [r].[StartedOn], [r].[DueOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[DueOn]), [r].[StartedOn]), [r].[DueOn]) * 10000) / 864000000000), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

