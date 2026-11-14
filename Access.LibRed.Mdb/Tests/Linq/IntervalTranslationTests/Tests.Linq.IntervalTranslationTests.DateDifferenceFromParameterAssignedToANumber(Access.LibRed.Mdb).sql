-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff('d', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf), DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf), [r].[ClosedOn])), @asOf)) / 86400
WHERE
	[r].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff('h', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf), DateAdd('h', DateDiff('h', [r].[ClosedOn], @asOf), [r].[ClosedOn])), @asOf)) / 3600

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff('h', @asOf, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn]), DateAdd('h', DateDiff('h', @asOf, [r].[ClosedOn]), @asOf)), [r].[ClosedOn])) / 3600
WHERE
	[r].[Id] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff('d', @asOf, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn]), DateAdd('d', DateDiff('d', @asOf, [r].[ClosedOn]), @asOf)), [r].[ClosedOn])) / 86400

