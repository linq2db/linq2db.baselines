-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @DueOn DateTime2
SET     @DueOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)

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

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @DueOn DateTime2
SET     @DueOn = NULL
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)

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

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @DueOn DateTime2
SET     @DueOn = DATETIME2FROMPARTS(2026, 1, 1, 12, 0, 0, 0, 7)
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)

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

-- SqlServer.SA SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.SA SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.SA SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST(((CAST(@Ticks AS BigInt) * -1) % 10000000) * 100 AS Int), DateAdd(second, CAST(((CAST(@Ticks AS BigInt) * -1) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST((CAST(@Ticks AS BigInt) * -1) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.SA SqlServer.2019
SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(NULL AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(NULL AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(NULL AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.SA SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.SA SqlServer.2019
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

-- SqlServer.SA SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1 AND DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2)))) < DateAdd(hour, 1, [r].[StartedOn])

-- SqlServer.SA SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 36002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.SA SqlServer.2019
SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(NULL AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(NULL AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(NULL AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.SA SqlServer.2019
DECLARE @Ticks BigInt -- Int64
SET     @Ticks = 72002500000

SELECT TOP (2)
	DateAdd(nanosecond, CAST((CAST(@Ticks AS BigInt) % 10000000) * 100 AS Int), DateAdd(second, CAST((CAST(@Ticks AS BigInt) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(CAST(@Ticks AS BigInt) / 864000000000 AS Int), CAST([r].[StartedOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.SA SqlServer.2019
SELECT
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[DueOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[DueOn]) AS Int), [r].[StartedOn]), [r].[DueOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[DueOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[DueOn]) AS Int), [r].[StartedOn]), [r].[DueOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[DueOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[DueOn]) AS Int), [r].[StartedOn]), [r].[DueOn]) / 100) / 864000000000 AS Int), CAST([r].[DueOn] AS DateTime2))))
FROM
	[OptionalDueRow] [r]
ORDER BY
	[r].[Id]

