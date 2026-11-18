-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-06-12T10:00:00.0000000' AS DATETIME2)
DECLARE @OpenedOn Date
SET     @OpenedOn = CAST('2026-06-01T00:00:00.0000000' AS DATETIME2)
DECLARE @ClosedOn Date
SET     @ClosedOn = CAST('2026-06-12T00:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
SELECT TOP (2)
	DateAdd(nanosecond, CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOn]) AS BigInt) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOn]) AS BigInt) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOn]) AS BigInt) / 100) / 864000000000 AS Int), CAST(CAST('2026-06-20T00:00:00.0000000' AS DATETIME2) AS DateTime2))))
FROM
	[CoarseEventRow] [r]

