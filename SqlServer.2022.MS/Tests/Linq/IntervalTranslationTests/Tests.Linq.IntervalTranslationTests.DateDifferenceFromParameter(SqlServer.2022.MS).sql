-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 5, 0, 0, 0, 0, 7)

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

-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 3, 0, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 3, 20, 0, 0, 0, 7)

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

-- SqlServer.2022.MS SqlServer.2022
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[StartedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], @asOf) AS Int), [r].[StartedOn]), @asOf) / 100 AS Float) / 36000000000 > 24

-- SqlServer.2022.MS SqlServer.2022
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	CAST((DateDiff_Big(day, @asOf, [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @asOf, [r].[FinishedOn]) AS Int), @asOf), [r].[FinishedOn]) / 100 AS Float) / 36000000000 > 24

-- SqlServer.2022.MS SqlServer.2022
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	CAST((DateDiff_Big(day, [r].[StartedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], @asOf) AS Int), [r].[StartedOn]), @asOf) / 100 AS Float) / 600000000

-- SqlServer.2022.MS SqlServer.2022
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT TOP (2)
	CAST((DateDiff_Big(day, [r].[StartedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], @asOf) AS Int), [r].[StartedOn]), @asOf) / 100 AS Float) / 864000000000,
	CAST((((DateDiff_Big(day, [r].[StartedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], @asOf) AS Int), [r].[StartedOn]), @asOf) / 100) / 36000000000) % 24 AS Int)
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

