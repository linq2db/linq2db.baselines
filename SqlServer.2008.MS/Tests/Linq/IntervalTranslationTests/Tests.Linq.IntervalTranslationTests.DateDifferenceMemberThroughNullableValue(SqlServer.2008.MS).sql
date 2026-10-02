-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOnNullable]) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOnNullable]) AS BigInt) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2008.MS SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-03T13:30:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt) AS Int), [r].[ClosedOnNullable]) AS DateTime2), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt) AS Int), [r].[ClosedOnNullable]) AS DateTime2), @asOf) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOnNullable], @asOf) AS BigInt) AS Int), [r].[ClosedOnNullable]) AS DateTime2)), @asOf) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2008.MS SqlServer.2008
SELECT TOP (2)
	CAST((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOnNullable]) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOnNullable]) AS BigInt) / 100) / 864000000000 AS Int) > 0

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOnNullable]) AS BigInt) / 100) / 36000000000) % 24 AS Int) > 0

-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST(((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOnNullable]) AS BigInt) / 100) / 864000000000 AS Int),
	CAST((((CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2), [r].[ClosedOnNullable]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[OpenedOn], [r].[ClosedOnNullable]) AS BigInt) AS Int), [r].[OpenedOn]) AS DateTime2)), [r].[ClosedOnNullable]) AS BigInt) / 100) / 36000000000) % 24 AS Int)
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	[r].[Id]

