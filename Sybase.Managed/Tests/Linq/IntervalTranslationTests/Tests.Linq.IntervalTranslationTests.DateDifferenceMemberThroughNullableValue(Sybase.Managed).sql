-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000 > 0

-- Sybase.Managed Sybase
DECLARE @asOf DateTime
SET     @asOf = '2026-01-03 13:30:00.000'

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt), [r].[ClosedOnNullable]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000 > 0

-- Sybase.Managed Sybase
SELECT TOP 2
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 864000000000 AS Int) > 0

-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 36000000000) % 24 AS Int) > 0

-- Sybase.Managed Sybase
SELECT
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 864000000000 AS Int),
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt), [r].[OpenedOn]), [r].[ClosedOnNullable]) AS BigInt) * 10000) / 36000000000) % 24 AS Int)
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	[r].[Id]

