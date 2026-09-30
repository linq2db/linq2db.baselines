-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn])), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn])), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn])), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) / 100 AS Float) / 600000000 > 0

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(((CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn])), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) / 100) / 864000000000 AS Int) > 0

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOnNullable]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOnNullable]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOnNullable])), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn])), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) / 100 AS Float) / 864000000000

-- SqlServer.2012.MS SqlServer.2012
SELECT
	CAST((CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn]), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOn])), DATETIME2FROMPARTS(2026, 9, 30, 0, 0, 0, 0, 7)) AS BigInt) / 100 AS Float) / 864000000000
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

