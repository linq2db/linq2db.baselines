-- SqlServer.2017
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100 AS Float) / 864000000000 < 12

-- SqlServer.2017
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100 AS Float) / 36000000000

-- SqlServer.2017
SELECT TOP (2)
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100 AS Float) / 864000000000,
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100 AS Float) / 36000000000,
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100 AS Float) / 600000000,
	CAST(((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100) / 864000000000 AS Int),
	CAST((((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOn]) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) / 100) / 36000000000) % 24 AS Int)
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

