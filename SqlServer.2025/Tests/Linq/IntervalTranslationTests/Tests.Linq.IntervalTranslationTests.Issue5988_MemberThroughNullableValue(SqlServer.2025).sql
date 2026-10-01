-- SqlServer.2025
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2025
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2025
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOnNullable]), DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2025
SELECT TOP (2)
	CAST((DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) / 100 AS Float) / 36000000000
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

