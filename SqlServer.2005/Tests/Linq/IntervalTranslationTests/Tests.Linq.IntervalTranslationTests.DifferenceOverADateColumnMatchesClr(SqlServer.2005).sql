-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = CAST('2026-06-01T10:00:00.000' AS DATETIME)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = CAST('2026-06-12T10:00:00.000' AS DATETIME)
DECLARE @OpenedOn DateTime
SET     @OpenedOn = CAST('2026-06-01T00:00:00.000' AS DATETIME)
DECLARE @ClosedOn DateTime
SET     @ClosedOn = CAST('2026-06-12T00:00:00.000' AS DATETIME)

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

-- SqlServer.2005
SELECT TOP (2)
	[r].[OpenedOn],
	[r].[ClosedOn]
FROM
	[CoarseEventRow] [r]

-- SqlServer.2005
SELECT TOP (2)
	(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000
FROM
	[CoarseEventRow] [r]

