-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff('d', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf), DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf), [r].[ClosedOn])), @asOf)) / 86400 > 0

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff('h', @asOf, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', @asOf, [r].[ClosedOn]), @asOf), [r].[ClosedOn]), DateAdd('h', DateDiff('h', @asOf, [r].[ClosedOn]), @asOf)), [r].[ClosedOn])) / 3600 > 0

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	DateDiff('n', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], @asOf), [r].[ClosedOn]), @asOf), DateAdd('n', DateDiff('n', [r].[ClosedOn], @asOf), [r].[ClosedOn])), @asOf)) / 60

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT TOP 2
	DateDiff('h', CVar(@asOf), [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', CVar(@asOf), [r].[ClosedOn]), CVar(@asOf)), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', CVar(@asOf), [r].[ClosedOn]), CVar(@asOf)), [r].[ClosedOn]), DateAdd('h', DateDiff('h', CVar(@asOf), [r].[ClosedOn]), CVar(@asOf))), [r].[ClosedOn])) / 3600
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

