-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DueOn DateTime2
SET     @DueOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DueOn DateTime2
SET     @DueOn = NULL
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DueOn DateTime2
SET     @DueOn = CAST('2026-01-01T12:00:00.0000000' AS DATETIME2)
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST(((CAST(@Ticks AS BigInt) * -1) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST(@Ticks AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(NULL AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(NULL AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(NULL AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2)))) > DateAdd(hour, 1, [r].[StartedOn])
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1 AND DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2)))) < DateAdd(hour, 1, [r].[StartedOn])

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(NULL AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(NULL AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(NULL AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
SELECT
	DateAdd(nanosecond, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[DueOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[DueOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[DueOn]) AS BigInt) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[DueOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[DueOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[DueOn]) AS BigInt) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[DueOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2), [r].[DueOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[DueOn]) AS BigInt) AS Int), [r].[StartedOn]) AS DateTime2)), [r].[DueOn]) AS BigInt) / 100) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

