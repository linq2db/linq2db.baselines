-- SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-10T08:15:30.0000000' AS DATETIME2)

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt) AS Int), [MeasuredPeriodRow].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt) AS Int), [MeasuredPeriodRow].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt) AS Int), [MeasuredPeriodRow].[ClosedOn]) AS DateTime2)), @asOf) AS BigInt) / 100 AS Float) / 864000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlServer.2008
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-10T08:15:30.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2), @asOf) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]) AS DateTime2)), @asOf) AS BigInt) / 100 AS Float) / 36000000000

-- SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-10T08:15:30.0000000' AS DATETIME2)

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [MeasuredPeriodRow].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [MeasuredPeriodRow].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2)), [MeasuredPeriodRow].[ClosedOn]) AS BigInt) / 100 AS Float) / 36000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlServer.2008
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlServer.2008
DECLARE @asOf DateTime2
SET     @asOf = CAST('2026-01-10T08:15:30.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [r].[ClosedOn]) AS BigInt) * 10000000 + CAST(DateDiff(nanosecond, DateAdd(second, CAST(CAST(DateDiff(second, CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2), [r].[ClosedOn]) AS BigInt) AS Int), CAST(DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf) AS DateTime2)), [r].[ClosedOn]) AS BigInt) / 100 AS Float) / 864000000000

