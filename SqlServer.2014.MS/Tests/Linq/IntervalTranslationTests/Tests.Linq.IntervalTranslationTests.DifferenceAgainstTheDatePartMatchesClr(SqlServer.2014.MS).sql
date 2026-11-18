-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 6, 1, 15, 0, 0, 0, 7)

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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	CAST((CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) AS Int), CAST([r].[FinishedOn] AS Date)) AS DateTime2), [r].[FinishedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) AS Int), CAST([r].[FinishedOn] AS Date)) AS DateTime2), [r].[FinishedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, CAST([r].[FinishedOn] AS Date), [r].[FinishedOn]) AS BigInt) AS Int), CAST([r].[FinishedOn] AS Date)) AS DateTime2)), [r].[FinishedOn]) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[EventRow] [r]

