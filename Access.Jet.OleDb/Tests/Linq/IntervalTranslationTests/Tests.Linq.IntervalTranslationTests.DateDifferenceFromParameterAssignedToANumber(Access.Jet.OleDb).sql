-- Access.Jet.OleDb AccessOleDb
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

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff('d', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf_1), [r].[ClosedOn]), @asOf_2)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf_3), [r].[ClosedOn]), @asOf_4), DateAdd('d', DateDiff('d', [r].[ClosedOn], @asOf_5), [r].[ClosedOn])), @asOf_6)) / 86400
WHERE
	[r].[Id] = 1

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.Jet.OleDb AccessOleDb
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
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff('h', [r].[ClosedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], @asOf_1), [r].[ClosedOn]), @asOf_2)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], @asOf_3), [r].[ClosedOn]), @asOf_4), DateAdd('h', DateDiff('h', [r].[ClosedOn], @asOf_5), [r].[ClosedOn])), @asOf_6)) / 3600

-- Access.Jet.OleDb AccessOleDb
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

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff('h', @asOf, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', @asOf_1, [r].[ClosedOn]), @asOf_2), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', @asOf_3, [r].[ClosedOn]), @asOf_4), [r].[ClosedOn]), DateAdd('h', DateDiff('h', @asOf_5, [r].[ClosedOn]), @asOf_6)), [r].[ClosedOn])) / 3600
WHERE
	[r].[Id] = 1

-- Access.Jet.OleDb AccessOleDb
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.Jet.OleDb AccessOleDb
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
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff('d', @asOf, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', @asOf_1, [r].[ClosedOn]), @asOf_2), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', @asOf_3, [r].[ClosedOn]), @asOf_4), [r].[ClosedOn]), DateAdd('d', DateDiff('d', @asOf_5, [r].[ClosedOn]), @asOf_6)), [r].[ClosedOn])) / 86400

