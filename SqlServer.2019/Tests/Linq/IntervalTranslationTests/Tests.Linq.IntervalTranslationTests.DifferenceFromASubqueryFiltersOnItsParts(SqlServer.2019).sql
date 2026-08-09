-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 15, 0, 0, 0, 7)

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

-- SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime2
SET     @StartedOn = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)
DECLARE @FinishedOn DateTime2
SET     @FinishedOn = DATETIME2FROMPARTS(2026, 1, 1, 11, 0, 0, 0, 7)

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

-- SqlServer.2019
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) AS Int), [x].[StartedOn]), [x].[FinishedOn]) / 100 AS Float) / 36000000000 > 3

-- SqlServer.2019
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CAST((((DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) AS Int), [x].[StartedOn]), [x].[FinishedOn]) / 100) / 36000000000) % 24 AS Int) = 1

-- SqlServer.2019
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
ORDER BY
	(DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) AS Int), [x].[StartedOn]), [x].[FinishedOn]) / 100 DESC

-- SqlServer.2019
SELECT
	(DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [x].[StartedOn], [x].[FinishedOn]) AS Int), [x].[StartedOn]), [x].[FinishedOn]) / 100
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- SqlServer.2019
SELECT
	[r].[Id],
	(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[StartedOn], [r].[FinishedOn]) AS Int), [r].[StartedOn]), [r].[FinishedOn]) / 100
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

