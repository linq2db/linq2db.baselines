-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-05T00:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-01-03T00:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-01-03T20:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008.MS SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100 AS Float) / 36000000000 > 24

-- SqlServer.2008.MS SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) AS Int), @asOf), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) AS Int), @asOf), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) AS Int), @asOf)), [r].[FinishedOn]) AS BigInt) / 100 AS Float) / 36000000000 > 24

-- SqlServer.2008.MS SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100 AS Float) / 600000000

-- SqlServer.2008.MS SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)

SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100 AS Float) / 864000000000,
	CAST((((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100) / 36000000000) % 24 AS Int)
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

