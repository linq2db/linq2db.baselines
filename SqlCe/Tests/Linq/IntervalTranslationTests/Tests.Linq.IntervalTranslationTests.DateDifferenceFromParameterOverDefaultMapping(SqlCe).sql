-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt), [r].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt), @asOf), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt), [r].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 600000000

-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT TOP (2)
	CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt), @asOf), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

