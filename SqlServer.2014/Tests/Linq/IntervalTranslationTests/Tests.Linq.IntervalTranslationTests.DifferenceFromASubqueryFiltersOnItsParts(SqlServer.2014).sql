-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 15, 0, 0, 0, 7)

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

-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 11, 0, 0, 0, 7)

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

-- SqlServer.2014
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn])), [x].[FinishedOn]) AS BigInt) / 100 AS Float) / 36000000000 > 3

-- SqlServer.2014
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((((CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn])), [x].[FinishedOn]) AS BigInt) / 100) / 36000000000) % 24 AS Int) = 1

-- SqlServer.2014
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
ORDER BY
	(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn])), [x].[FinishedOn]) AS BigInt) / 100 DESC

-- SqlServer.2014
SELECT
	(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn]), [x].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [x].[StartedOn], [x].[FinishedOn]) AS BigInt) AS Int), [x].[StartedOn])), [x].[FinishedOn]) AS BigInt) / 100
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- SqlServer.2014
SELECT
	[r].[Id],
	(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn])), [r].[FinishedOn]) AS BigInt) / 100
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

