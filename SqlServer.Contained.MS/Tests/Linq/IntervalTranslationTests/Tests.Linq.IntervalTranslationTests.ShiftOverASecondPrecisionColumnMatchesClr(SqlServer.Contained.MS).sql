-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 6, 1, 15, 4, 3, 0, 7)
DECLARE @OpenedOn Date
SET     @OpenedOn = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)
DECLARE @ClosedOn Date
SET     @ClosedOn = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)

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

-- SqlServer.Contained.MS SqlServer.2019
SELECT TOP (2)
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 864000000000 AS Int), DATETIME2FROMPARTS(2026, 6, 20, 0, 0, 0, 0, 7))))
FROM
	[CoarseEventRow] [r]

