-- Access.Jet.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff('d', [r].[ClosedOn], ?) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], ?), [r].[ClosedOn]), ?)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], ?), [r].[ClosedOn]), ?), DateAdd('d', DateDiff('d', [r].[ClosedOn], ?), [r].[ClosedOn])), ?)) / 86400
WHERE
	[r].[Id] = 1

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff('h', [r].[ClosedOn], ?) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], ?), [r].[ClosedOn]), ?)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], ?), [r].[ClosedOn]), ?), DateAdd('h', DateDiff('h', [r].[ClosedOn], ?), [r].[ClosedOn])), ?)) / 3600

-- Access.Jet.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#

UPDATE
	[MeasuredPeriodRow] [r]
SET
	[r].[Elapsed] = DateDiff('h', ?, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', ?, [r].[ClosedOn]), ?), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', ?, [r].[ClosedOn]), ?), [r].[ClosedOn]), DateAdd('h', DateDiff('h', ?, [r].[ClosedOn]), ?)), [r].[ClosedOn])) / 3600
WHERE
	[r].[Id] = 1

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	[t1].[Id],
	[t1].[ClosedOn],
	[t1].[Elapsed]
FROM
	[MeasuredPeriodRow] [t1]

-- Access.Jet.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-10 08:15:30#

SELECT
	[r].[Id]
FROM
	[MeasuredPeriodRow] [r]
WHERE
	[r].[Elapsed] < DateDiff('d', ?, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', ?, [r].[ClosedOn]), ?), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', ?, [r].[ClosedOn]), ?), [r].[ClosedOn]), DateAdd('d', DateDiff('d', ?, [r].[ClosedOn]), ?)), [r].[ClosedOn])) / 86400

