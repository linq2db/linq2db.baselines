-- SqlServer.2012.MS SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2)), @asOf) AS BigInt) / 100 AS Float) / 864000000000 > 0

-- SqlServer.2012.MS SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [r].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2)), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 36000000000 > 0

-- SqlServer.2012.MS SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2)), @asOf) AS BigInt) / 100 AS Float) / 600000000

-- SqlServer.2012.MS SqlServer.2012
DECLARE @asOf DateTime2
SET     @asOf = DATETIME2FROMPARTS(2026, 1, 10, 8, 15, 30, 0, 7)

SELECT TOP (2)
	CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [r].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2)), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 36000000000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

