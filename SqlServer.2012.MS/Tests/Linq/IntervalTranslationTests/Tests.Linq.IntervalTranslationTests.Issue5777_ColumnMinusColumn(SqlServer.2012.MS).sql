-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 864000000000 < 12

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 36000000000

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 864000000000,
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 36000000000,
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 600000000,
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOn]) AS BigInt) / 100) / 864000000000 AS Int),
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) AS Int), DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn])), [r].[ClosedOn]) AS BigInt) / 100) / 36000000000) % 24 AS Int)
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

