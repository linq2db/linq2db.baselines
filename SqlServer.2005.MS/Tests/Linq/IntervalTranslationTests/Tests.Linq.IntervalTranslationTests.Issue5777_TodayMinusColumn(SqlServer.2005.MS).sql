-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 10000 AS Float) / 600000000 > 0

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 10000) / 864000000000 AS Int) > 0

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOnNullable]), CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 10000 AS Float) / 864000000000

-- SqlServer.2005.MS SqlServer.2005
SELECT
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.000' AS DATETIME)) AS BigInt) * 10000 AS Float) / 864000000000
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

