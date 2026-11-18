-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-01-01 10:20:30.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-01-01 10:20:30.123'

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

-- SqlCe
SELECT TOP (2)
	[r].[FinishedOn]
FROM
	[EventRow] [r]

-- SqlCe
SELECT TOP (2)
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / CAST(10000 AS BigInt)) % CAST(1000 AS BigInt) AS Int),
	CAST((((CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[StartedOn], [r].[FinishedOn]) AS BigInt), [r].[StartedOn]), [r].[FinishedOn]) AS BigInt) * 10000) / CAST(10000000 AS BigInt)) % CAST(60 AS BigInt) AS Int)
FROM
	[EventRow] [r]

