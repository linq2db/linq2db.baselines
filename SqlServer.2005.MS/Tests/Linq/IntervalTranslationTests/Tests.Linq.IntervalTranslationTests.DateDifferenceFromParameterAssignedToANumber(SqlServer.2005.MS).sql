-- SqlServer.2005.MS SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt) AS Int), [MeasuredPeriodRow].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) AS Int), [r].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 36000000000

-- SqlServer.2005.MS SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt) AS Int), @asOf), [MeasuredPeriodRow].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @asOf DateTime
SET     @asOf = CAST('2026-01-10T08:15:30.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) AS Int), @asOf), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 864000000000

