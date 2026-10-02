-- SqlServer.SA.MS SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((DateDiff_Big(day, [MeasuredPeriodRow].[ClosedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS Int), [MeasuredPeriodRow].[ClosedOn]), @asOf) / 100 AS Float) / 864000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((DateDiff_Big(day, [r].[ClosedOn], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], @asOf) AS Int), [r].[ClosedOn]), @asOf) / 100 AS Float) / 36000000000

-- SqlServer.SA.MS SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((DateDiff_Big(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS Int), @asOf), [MeasuredPeriodRow].[ClosedOn]) / 100 AS Float) / 36000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlServer.SA.MS SqlServer.2019
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlServer.SA.MS SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((DateDiff_Big(day, @asOf, [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, @asOf, [r].[ClosedOn]) AS Int), @asOf), [r].[ClosedOn]) / 100 AS Float) / 864000000000

