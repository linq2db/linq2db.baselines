-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 600000000

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

SELECT TOP (2)
	CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

