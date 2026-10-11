-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @OnSmall SmallDateTime -- DateTime
SET     @OnSmall = DATETIME2FROMPARTS(2020, 1, 1, 3, 0, 0, 0, 7)
DECLARE @StartedOn DateTime
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 15, 30, 15, 2500000, 7)

INSERT INTO [SmallDateTimeShiftRow]
(
	[Id],
	[OnSmall],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@OnSmall,
	@StartedOn,
	@FinishedOn
)

-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 864000000000 AS Int), CAST([r].[OnSmall] AS DateTime2))))
FROM
	[SmallDateTimeShiftRow] [r]

-- SqlServer.2025.MS SqlServer.2025
DECLARE @bound DateTime2
SET     @bound = DATETIME2FROMPARTS(2020, 1, 1, 8, 30, 14, 2500000, 7)

SELECT
	[r].[Id]
FROM
	[SmallDateTimeShiftRow] [r]
WHERE
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 864000000000 AS Int), CAST([r].[OnSmall] AS DateTime2)))) > @bound

