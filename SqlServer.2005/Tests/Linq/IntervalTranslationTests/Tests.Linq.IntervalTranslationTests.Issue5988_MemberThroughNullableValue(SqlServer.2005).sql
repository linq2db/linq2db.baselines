-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-09-30T00:00:00.000' AS DATETIME)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], CAST('2026-09-30T00:00:00.000' AS DATETIME)) AS BigInt) AS Int), [r].[ClosedOnNullable]), CAST('2026-09-30T00:00:00.000' AS DATETIME)) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlServer.2005
SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

