-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 864000000000 < 12

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 864000000000,
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000,
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 600000000,
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000) / 864000000000 AS Int),
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOn]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOn]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

