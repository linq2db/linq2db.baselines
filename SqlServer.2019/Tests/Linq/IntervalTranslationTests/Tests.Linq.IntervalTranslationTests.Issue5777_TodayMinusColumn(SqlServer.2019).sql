-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) / 100 AS Float) / 600000000 > 0

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(((DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) / 100) / 864000000000 AS Int) > 0

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((DateDiff_Big(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOnNullable]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2019
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST((DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) / 100 AS Float) / 864000000000

-- SqlServer.2019
SELECT
	CAST((DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) * 86400) * 10000000 + DateDiff_Big(nanosecond, DateAdd(day, CAST(DateDiff_Big(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) / 100 AS Float) / 864000000000
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

