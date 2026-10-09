-- SqlServer.2025.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @OnDateTime DateTime
SET     @OnDateTime = DATETIME2FROMPARTS(2026, 3, 1, 10, 0, 0, 0, 7)
DECLARE @OnSmall SmallDateTime -- DateTime
SET     @OnSmall = DATETIME2FROMPARTS(2026, 3, 1, 10, 0, 0, 0, 7)
DECLARE @OnDate Date
SET     @OnDate = DATETIME2FROMPARTS(2026, 3, 1, 0, 0, 0, 0, 7)
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 15, 30, 0, 2501234, 7)

INSERT INTO [CoarseShiftRow]
(
	[Id],
	[OnDateTime],
	[OnSmall],
	[OnDate],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@OnDateTime,
	@OnSmall,
	@OnDate,
	@StartedOn,
	@FinishedOn
)

-- SqlServer.2025.MS SqlServer.2025
SELECT TOP (2)
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 864000000000 AS Int), CAST([r].[OnDateTime] AS DateTime2)))),
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 864000000000 AS Int), CAST([r].[OnSmall] AS DateTime2)))),
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 864000000000 AS Int), CAST([r].[OnDate] AS DateTime2))))
FROM
	[CoarseShiftRow] [r]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[r].[Id]
FROM
	[CoarseShiftRow] [r]
WHERE
	DateAdd(nanosecond, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 10000000) * 100 AS Int), DateAdd(second, CAST((((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) % 864000000000) / 10000000 AS Int), DateAdd(day, CAST(((DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100) / 864000000000 AS Int), CAST([r].[OnDateTime] AS DateTime2)))) > DateAdd(hour, 5, [r].[OnDateTime])

