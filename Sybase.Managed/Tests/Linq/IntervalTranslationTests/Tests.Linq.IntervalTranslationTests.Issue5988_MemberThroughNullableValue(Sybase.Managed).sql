-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], '2026-09-30 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOnNullable], '2026-09-30 00:00:00.000') AS BigInt), [r].[ClosedOnNullable]), '2026-09-30 00:00:00.000') AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- Sybase.Managed Sybase
SELECT TOP 2
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

