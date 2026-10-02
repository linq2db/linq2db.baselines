-- SqlCe
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt), [r].[ClosedOn]), '2026-10-01 00:00:00.000') AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlCe
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt), [r].[ClosedOn]), '2026-10-01 00:00:00.000') AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- SqlCe
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt), [r].[ClosedOn]), '2026-10-01 00:00:00.000') AS BigInt) * 10000 AS Float) / 600000000 > 0

-- SqlCe
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST(((CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt), [r].[ClosedOn]), '2026-10-01 00:00:00.000') AS BigInt) * 10000) / CAST(864000000000 AS BigInt) AS Int) > 0

-- SqlCe
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], '2026-10-01 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOnNullable], '2026-10-01 00:00:00.000') AS BigInt), [r].[ClosedOnNullable]), '2026-10-01 00:00:00.000') AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlCe
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt), [r].[ClosedOn]), '2026-10-01 00:00:00.000') AS BigInt) * 10000 AS Float) / 864000000000

-- SqlCe
SELECT
	CAST((CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], '2026-10-01 00:00:00.000') AS BigInt), [r].[ClosedOn]), '2026-10-01 00:00:00.000') AS BigInt) * 10000 AS Float) / 864000000000
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

