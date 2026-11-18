-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff_Big('d', [r].[ClosedOn], @asOf) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf) / 86400000
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff_Big('h', [r].[ClosedOn], @asOf) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf) / 3600000

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff_Big('h', @asOf, [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn]) / 3600000
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff_Big('d', @asOf, [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn]) / 86400000

