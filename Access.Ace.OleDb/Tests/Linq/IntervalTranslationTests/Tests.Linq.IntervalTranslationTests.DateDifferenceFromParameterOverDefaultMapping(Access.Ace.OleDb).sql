-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-10 08:15:30#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-10 08:15:30#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-10 08:15:30#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-10 08:15:30#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-10 08:15:30#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff('d', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf_1), [r].[ClosedOn]), @asOf_2)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf_3), [r].[ClosedOn]), @asOf_4), DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf_5), [r].[ClosedOn])), @asOf_6)) / 86400 > 0

-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-10 08:15:30#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-10 08:15:30#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-10 08:15:30#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-10 08:15:30#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-10 08:15:30#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff('h', @asOf, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', @asOf_1, [r].[ClosedOn]), @asOf_2), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', @asOf_3, [r].[ClosedOn]), @asOf_4), [r].[ClosedOn]), DateAdd('h', DateDiff('h', @asOf_5, [r].[ClosedOn]), @asOf_6)), [r].[ClosedOn])) / 3600 > 0

-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-10 08:15:30#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-10 08:15:30#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-10 08:15:30#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-10 08:15:30#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-10 08:15:30#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	DateDiff('n', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], @asOf_1), [r].[ClosedOn]), @asOf_2)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], @asOf_3), [r].[ClosedOn]), @asOf_4), DateAdd('n', DateDiff('n', [r].[ClosedOn], @asOf_5), [r].[ClosedOn])), @asOf_6)) / 60

-- Access.Ace.OleDb AccessOleDb
DECLARE @asOf Date -- DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf_1 Date -- DateTime
SET     @asOf_1 = #2026-01-10 08:15:30#
DECLARE @asOf_2 Date -- DateTime
SET     @asOf_2 = #2026-01-10 08:15:30#
DECLARE @asOf_3 Date -- DateTime
SET     @asOf_3 = #2026-01-10 08:15:30#
DECLARE @asOf_4 Date -- DateTime
SET     @asOf_4 = #2026-01-10 08:15:30#
DECLARE @asOf_5 Date -- DateTime
SET     @asOf_5 = #2026-01-10 08:15:30#
DECLARE @asOf_6 Date -- DateTime
SET     @asOf_6 = #2026-01-10 08:15:30#

SELECT TOP 2
	DateDiff('h', CVar(@asOf), [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', CVar(@asOf_1), [r].[ClosedOn]), CVar(@asOf_2)), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', CVar(@asOf_3), [r].[ClosedOn]), CVar(@asOf_4)), [r].[ClosedOn]), DateAdd('h', DateDiff('h', CVar(@asOf_5), [r].[ClosedOn]), CVar(@asOf_6))), [r].[ClosedOn])) / 3600
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

