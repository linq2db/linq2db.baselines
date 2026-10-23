-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2019
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 3, 13, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[ClosedOnNullable], @asOf) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOnNullable], @asOf) AS Int), [r].[ClosedOnNullable]), @asOf) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2019
SELECT TOP (2)
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100) / 864000000000 AS Int) > 0

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100) / 36000000000) % 24 AS Int) > 0

-- SqlServer.2019
SELECT
	CAST(((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100) / 864000000000 AS Int),
	CAST((((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100) / 36000000000) % 24 AS Int)
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	[r].[Id]

