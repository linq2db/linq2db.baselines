-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-01T10:00:00.006' AS DATETIME)

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
	(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r]

-- SqlServer.2005
SELECT
	(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r]
WHERE
	[r].[Id] > 0
UNION ALL
SELECT
	(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r_1].[StartedOn], [r_1].[FinishedOn]) AS BigInt) AS Int), [r_1].[StartedOn]), [r_1].[FinishedOn]) AS BigInt) * 10000
FROM
	[EventRow] [r_1]
WHERE
	[r_1].[Id] <= 0

