-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-06-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-06-01T15:00:00.000' AS DATETIME)

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

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	CAST((CAST(DateDiff(day, DateAdd(dd, DateDiff(dd, 0, [r].[FinishedOn]), 0), [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, DateAdd(dd, DateDiff(dd, 0, [r].[FinishedOn]), 0), [r].[FinishedOn]) AS BigInt) AS Int), DateAdd(dd, DateDiff(dd, 0, [r].[FinishedOn]), 0)), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[EventRow] [r]

