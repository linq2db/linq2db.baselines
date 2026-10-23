-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DueOn DateTime
SET     @DueOn = '2026-01-01 10:00:00.000'
DECLARE @StartedOn DateTime
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

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DueOn DateTime
SET     @DueOn = NULL
DECLARE @StartedOn DateTime
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

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DueOn DateTime
SET     @DueOn = '2026-01-01 12:00:00.000'
DECLARE @StartedOn DateTime
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

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, ((CAST(@Ticks AS BigInt) * -1) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, ((CAST(@Ticks AS BigInt) * -1) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / CAST(864000000000 AS BigInt), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
SELECT TOP (2)
	DateAdd(millisecond, (CAST(NULL AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(NULL AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(NULL AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[DueOn]))) > DateAdd(hour, 1, [r].[StartedOn])
ORDER BY
	[r].[Id]

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1 AND DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn]))) < DateAdd(hour, 1, [r].[StartedOn])

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
SELECT TOP (2)
	DateAdd(millisecond, (CAST(NULL AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(NULL AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(NULL AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72002500000

SELECT TOP (2)
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (CAST(@Ticks AS BigInt) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, CAST(@Ticks AS BigInt) / CAST(864000000000 AS BigInt), [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
SELECT
	DateAdd(millisecond, (((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) % CAST(10000000 AS BigInt)) / CAST(10000 AS BigInt), DateAdd(second, (((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) % CAST(864000000000 AS BigInt)) / CAST(10000000 AS BigInt), DateAdd(day, ((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) / CAST(864000000000 AS BigInt), [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

