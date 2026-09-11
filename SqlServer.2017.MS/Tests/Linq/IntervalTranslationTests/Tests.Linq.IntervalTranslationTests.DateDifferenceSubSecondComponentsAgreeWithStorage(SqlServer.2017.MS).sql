-- SqlServer.2017.MS SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 20, 30, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 20, 30, 1234567, 7)

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

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	[r].[FinishedOn]
FROM
	[EventRow] [r]

-- SqlServer.2017.MS SqlServer.2017
SELECT TOP (2)
	CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 10000) % 1000 AS Int),
	CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 10000000) % 60 AS Int)
FROM
	[EventRow] [r]

