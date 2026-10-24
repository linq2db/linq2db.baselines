-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 6, 12, 10, 0, 0, 0, 7)
DECLARE @OpenedOn Date
SET     @OpenedOn = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)
DECLARE @ClosedOn Date
SET     @ClosedOn = DATETIME2FROMPARTS(2026, 6, 12, 0, 0, 0, 0, 7)

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

-- SqlServer.2012
SELECT TOP (2)
	[r].[OpenedOn],
	[r].[ClosedOn]
FROM
	[CoarseEventRow] [r]

-- SqlServer.2012
SELECT TOP (2)
	(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOn]) AS BigInt) / 100
FROM
	[CoarseEventRow] [r]

