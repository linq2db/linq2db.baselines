-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff_Big('d', [r].[ClosedOn], @asOf) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf) / 86400000 > 0

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff_Big('h', @asOf, [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn]) / 3600000 > 0

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	DateDiff_Big('n', [r].[ClosedOn], @asOf) + DateDiff_Big('ms', DateAdd('n', DateDiff_Big('n', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf) / 60000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT TOP 2
	DateDiff_Big('h', CVar(@asOf), [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', CVar(@asOf), [r].[ClosedOn]), CVar(@asOf)), [r].[ClosedOn]) / 3600000
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

