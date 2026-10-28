-- SqlServer.Contained SqlServer.2019
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

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	[r].[OpenedOn],
	[r].[ClosedOn]
FROM
	[CoarseEventRow] [r]

-- SqlServer.Contained SqlServer.2019
SELECT TOP (2)
	(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100
FROM
	[CoarseEventRow] [r]

