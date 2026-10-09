-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOnNullable]) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOnNullable]) AS BigInt) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2014.MS SqlServer.2014
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOnNullable]), DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOnNullable]), DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS BigInt) AS Int), [r].[ClosedOnNullable])), DATETIME2FROMPARTS(2026, 10, 1, 0, 0, 0, 0, 7)) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOnNullable]) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

