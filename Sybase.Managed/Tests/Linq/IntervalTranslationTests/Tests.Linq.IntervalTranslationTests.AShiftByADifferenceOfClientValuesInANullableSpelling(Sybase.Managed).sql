-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, ((CAST(@Ticks AS BigInt) * -1) % 10000000) / 10000, DateAdd(second, ((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000, DateAdd(day, (CAST(@Ticks AS BigInt) * -1) / 864000000000, [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
SELECT TOP 2
	DateAdd(millisecond, (CAST(NULL AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(NULL AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(NULL AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[DueOn]))) > DateAdd(hour, 1, [r].[StartedOn])
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1 AND DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn]))) < DateAdd(hour, 1, [r].[StartedOn])

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
SELECT TOP 2
	DateAdd(millisecond, (CAST(NULL AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(NULL AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(NULL AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72002500000

SELECT TOP 2
	DateAdd(millisecond, (CAST(@Ticks AS BigInt) % 10000000) / 10000, DateAdd(second, (CAST(@Ticks AS BigInt) % 864000000000) / 10000000, DateAdd(day, CAST(@Ticks AS BigInt) / 864000000000, [r].[StartedOn])))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
SELECT
	DateAdd(millisecond, (((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) % 10000000) / 10000, DateAdd(second, (((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) % 864000000000) / 10000000, DateAdd(day, ((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) / 864000000000, [r].[DueOn])))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

