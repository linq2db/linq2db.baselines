-- Access.Ace.Odbc AccessODBC
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
	[Issue5777Row] [r]
WHERE
	DateDiff('d', [r].[ClosedOn], ?) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], ?), [r].[ClosedOn]), ?)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], ?), [r].[ClosedOn]), ?), DateAdd('d', DateDiff('d', [r].[ClosedOn], ?), [r].[ClosedOn])), ?)) / 86400 > 0

-- Access.Ace.Odbc AccessODBC
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
	[Issue5777Row] [r]
WHERE
	DateDiff('h', ?, [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', ?, [r].[ClosedOn]), ?), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', ?, [r].[ClosedOn]), ?), [r].[ClosedOn]), DateAdd('h', DateDiff('h', ?, [r].[ClosedOn]), ?)), [r].[ClosedOn])) / 3600 > 0

-- Access.Ace.Odbc AccessODBC
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
	[Issue5777Row] [r]
ORDER BY
	DateDiff('n', [r].[ClosedOn], ?) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], ?), [r].[ClosedOn]), ?)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], ?), [r].[ClosedOn]), ?), DateAdd('n', DateDiff('n', [r].[ClosedOn], ?), [r].[ClosedOn])), ?)) / 60

-- Access.Ace.Odbc AccessODBC
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

SELECT TOP 2
	DateDiff('h', CVar(?), [r].[ClosedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', CVar(?), [r].[ClosedOn]), CVar(?)), [r].[ClosedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', CVar(?), [r].[ClosedOn]), CVar(?)), [r].[ClosedOn]), DateAdd('h', DateDiff('h', CVar(?), [r].[ClosedOn]), CVar(?))), [r].[ClosedOn])) / 3600
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

