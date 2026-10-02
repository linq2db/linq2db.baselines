-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DueOn DateTime
SET     @DueOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)

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

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DueOn DateTime
SET     @DueOn = NULL
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)

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

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DueOn DateTime
SET     @DueOn = CAST('2026-01-01T12:00:00.000' AS DATETIME)
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)

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

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, CAST(((CAST(@Ticks AS BigInt) * -1) % 10000000) / 10000 AS Int), DateAdd(second, CAST(((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST(@Ticks AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
SELECT TOP (2)
	DateAdd(millisecond, CAST((CAST(NULL AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(NULL AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(NULL AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime)))) > DateAdd(hour, 1, [r].[StartedOn])
ORDER BY
	[r].[Id]

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1 AND DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime)))) < DateAdd(hour, 1, [r].[StartedOn])

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
SELECT TOP (2)
	DateAdd(millisecond, CAST((CAST(NULL AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(NULL AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(NULL AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72002500000

SELECT TOP (2)
	DateAdd(millisecond, CAST((CAST(@Ticks AS BigInt) % 10000000) / 10000 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
SELECT
	DateAdd(millisecond, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) % 10000000) / 10000 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[DueOn]) AS BigInt) * 10000) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime))))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

