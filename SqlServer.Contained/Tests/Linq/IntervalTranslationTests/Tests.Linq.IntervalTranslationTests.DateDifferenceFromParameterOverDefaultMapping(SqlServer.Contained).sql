-- SqlServer.Contained SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[ClosedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], @asOf) AS Int), [r].[ClosedOn]), @asOf) / 100 AS Float) / 864000000000 > 0

-- SqlServer.Contained SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, @asOf, [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @asOf, [r].[ClosedOn]) AS Int), @asOf), [r].[ClosedOn]) / 100 AS Float) / 36000000000 > 0

-- SqlServer.Contained SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST((DateDiff_Big(day, [r].[ClosedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], @asOf) AS Int), [r].[ClosedOn]), @asOf) / 100 AS Float) / 600000000

-- SqlServer.Contained SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT TOP (2)
	CAST((DateDiff_Big(day, @asOf, [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @asOf, [r].[ClosedOn]) AS Int), @asOf), [r].[ClosedOn]) / 100 AS Float) / 36000000000
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

