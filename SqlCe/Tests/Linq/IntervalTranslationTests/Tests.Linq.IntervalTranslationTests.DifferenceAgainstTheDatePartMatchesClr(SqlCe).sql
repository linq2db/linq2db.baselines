-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = '2026-06-01 10:00:00.000'
DECLARE @FinishedOn DateTime
SET     @FinishedOn = '2026-06-01 15:00:00.000'

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
	CAST((CAST(DateDiff(day, CAST(CONVERT(NVarChar(10), [r].[FinishedOn], 101) AS DateTime), [r].[FinishedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, CAST(CONVERT(NVarChar(10), [r].[FinishedOn], 101) AS DateTime), [r].[FinishedOn]) AS BigInt), CAST(CONVERT(NVarChar(10), [r].[FinishedOn], 101) AS DateTime)), [r].[FinishedOn]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[EventRow] [r]

