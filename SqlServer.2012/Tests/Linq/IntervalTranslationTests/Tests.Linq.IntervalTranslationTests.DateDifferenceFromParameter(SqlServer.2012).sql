-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 5, 0, 0, 0, 0, 7)

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

-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 3, 0, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 3, 20, 0, 0, 0, 7)

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

-- SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100 AS Float) / 36000000000 > 24

-- SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) AS Int), @asOf), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) AS Int), @asOf), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) AS Int), @asOf)), [r].[FinishedOn]) AS BigInt) / 100 AS Float) / 36000000000 > 24

-- SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100 AS Float) / 600000000

-- SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100 AS Float) / 864000000000,
	CAST((((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn])), @asOf) AS BigInt) / 100) / 36000000000) % 24 AS Int)
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

