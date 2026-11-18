-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = CAST('2026-06-01T15:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
SELECT TOP (2)
	CAST((CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) AS Int), CAST([r].[FinishedOn] AS Date)) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) AS Int), CAST([r].[FinishedOn] AS Date)) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) AS Int), CAST([r].[FinishedOn] AS Date)) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[EventRow] [r]

