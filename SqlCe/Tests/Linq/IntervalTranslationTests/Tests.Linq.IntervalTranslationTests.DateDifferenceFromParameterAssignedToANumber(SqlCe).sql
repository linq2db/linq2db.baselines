-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [MeasuredPeriodRow].[ClosedOn], @asOf) AS BigInt), [MeasuredPeriodRow].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 864000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [r].[ClosedOn], @asOf) AS BigInt), [r].[ClosedOn]), @asOf) AS BigInt) * 10000 AS Float) / 36000000000

-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

UPDATE
	[MeasuredPeriodRow]
SET
	[Elapsed] = CAST((CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, @asOf, [MeasuredPeriodRow].[ClosedOn]) AS BigInt), @asOf), [MeasuredPeriodRow].[ClosedOn]) AS BigInt) * 10000 AS Float) / 36000000000
WHERE
	[MeasuredPeriodRow].[Id] = 1

-- SqlCe
SELECT TOP (2)
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- SqlCe
DECLARE @asOf DateTime
SET     @asOf = '2026-01-10 08:15:30.000'

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < CAST((CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, @asOf, [r].[ClosedOn]) AS BigInt), @asOf), [r].[ClosedOn]) AS BigInt) * 10000 AS Float) / 864000000000

