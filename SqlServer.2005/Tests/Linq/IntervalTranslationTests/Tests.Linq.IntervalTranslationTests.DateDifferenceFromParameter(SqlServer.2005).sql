-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-05T00:00:00.000' AS DATETIME)

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

-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-03T00:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-03T20:00:00.000' AS DATETIME)

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

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-03T13:30:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000 AS Float) / 36000000000 > 24

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-03T13:30:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[FinishedOn]) AS BigInt) AS Int), @asOf), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 36000000000 > 24

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-03T13:30:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000 AS Float) / 600000000

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-03T13:30:00.000' AS DATETIME)

SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000,
	CAST((((CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], @asOf) AS BigInt) AS Int), [r].[StartedOn]), @asOf) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

