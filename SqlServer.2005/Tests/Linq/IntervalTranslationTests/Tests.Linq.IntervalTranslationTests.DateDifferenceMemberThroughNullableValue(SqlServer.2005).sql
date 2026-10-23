-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-03T13:30:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt) AS Int), [r].[ClosedOnNullable]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- SqlServer.2005
SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 864000000000 AS Int) > 0

-- SqlServer.2005
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 36000000000) % 24 AS Int) > 0

-- SqlServer.2005
SELECT
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 864000000000 AS Int),
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	[r].[Id]

