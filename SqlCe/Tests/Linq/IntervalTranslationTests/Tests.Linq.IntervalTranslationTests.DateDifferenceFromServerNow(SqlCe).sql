-- SqlCe
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt), [r].[ClosedOn]), GetDate()) AS BigInt) * 10000 AS Float) / 864000000000 > 300

-- SqlCe
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt), [r].[ClosedOn]), GetDate()) AS BigInt) * 10000 AS Float) / 864000000000

-- SqlCe
SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt), [r].[ClosedOn]), GetDate()) AS BigInt) * 10000 AS Float) / 864000000000,
	CAST((((CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], GetDate()) AS BigInt), [r].[ClosedOn]), GetDate()) AS BigInt) * 10000) / CAST(36000000000 AS BigInt)) % CAST(24 AS BigInt) AS Int)
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

