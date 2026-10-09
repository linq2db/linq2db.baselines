-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-01-01T10:20:30.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-01-01T10:20:30.123' AS DATETIME)

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
SELECT TOP (2)
	[r].[FinishedOn]
FROM
	[EventRow] [r]

-- SqlServer.2005
SELECT TOP (2)
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 10000) % 1000 AS Int),
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) AS Int), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / 10000000) % 60 AS Int)
FROM
	[EventRow] [r]

