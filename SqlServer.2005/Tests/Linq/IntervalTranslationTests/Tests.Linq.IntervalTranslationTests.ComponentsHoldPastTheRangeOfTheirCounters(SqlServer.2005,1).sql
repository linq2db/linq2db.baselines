-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('1970-01-02T00:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2045-06-05T04:03:02.000' AS DATETIME)

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
SET     @StartedOn = CAST('1970-01-02T00:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('1970-01-02T00:02:05.000' AS DATETIME)

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
SELECT
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2005
SELECT
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 600000000) % 60 AS Int)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

-- SqlServer.2005
SELECT
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 10000000) % 60 AS Int)
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

