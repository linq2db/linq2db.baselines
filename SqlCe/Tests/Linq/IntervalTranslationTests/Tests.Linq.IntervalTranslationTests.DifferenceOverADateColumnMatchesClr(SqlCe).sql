-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-06-12 10:00:00.000'
DECLARE @OpenedOn DateTime
SET     @OpenedOn = '2026-06-01 00:00:00.000'
DECLARE @ClosedOn DateTime
SET     @ClosedOn = '2026-06-12 00:00:00.000'

INSERT INTO [CoarseEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[OpenedOn],
	[ClosedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- SqlCe
SELECT TOP (2)
	[r].[OpenedOn],
	[r].[ClosedOn]
FROM
	[CoarseEventRow] [r]

-- SqlCe
SELECT TOP (2)
	(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000
FROM
	[CoarseEventRow] [r]

