-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn])), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn])), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn])), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) / 100 AS Float) / 600000000 > 0

-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn])), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) / 100) / 864000000000 AS Int) > 0

-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOnNullable]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOnNullable]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOnNullable])), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2008
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn])), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) / 100 AS Float) / 864000000000

-- SqlServer.2008
SELECT
	CAST((CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn]), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) AS Int), [r].[ClosedOn])), CAST('2026-10-01T00:00:00.0000000' AS DATETIME2)) AS BigInt) / 100 AS Float) / 864000000000
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

