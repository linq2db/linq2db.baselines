-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-05#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @StartedOn DateTime
SET     @StartedOn = #2026-01-03#
DECLARE @FinishedOn DateTime
SET     @FinishedOn = #2026-01-03 20:00:00#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateDiff('h', [r].[StartedOn], ?) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], ?), [r].[StartedOn]), ?)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], ?), [r].[StartedOn]), ?), DateAdd('h', DateDiff('h', [r].[StartedOn], ?), [r].[StartedOn])), ?)) / 3600 > 24

-- Access.Ace.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateDiff('h', ?, [r].[FinishedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', ?, [r].[FinishedOn]), ?), [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', ?, [r].[FinishedOn]), ?), [r].[FinishedOn]), DateAdd('h', DateDiff('h', ?, [r].[FinishedOn]), ?)), [r].[FinishedOn])) / 3600 > 24

-- Access.Ace.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	DateDiff('n', [r].[StartedOn], ?) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[StartedOn], ?), [r].[StartedOn]), ?)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[StartedOn], ?), [r].[StartedOn]), ?), DateAdd('n', DateDiff('n', [r].[StartedOn], ?), [r].[StartedOn])), ?)) / 60

-- Access.Ace.Odbc AccessODBC
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#
DECLARE @asOf DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT TOP 2
	DateDiff('d', [r].[StartedOn], CVar(?)) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]), CVar(?))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]), CVar(?)), DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn])), CVar(?))) / 86400,
	IIF(CVar(?) >= DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn]), CVar(?)), DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn])) > CVar(?), DateDiff('h', DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn]), CVar(?)) - 1, IIF(CVar(?) < DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn]), CVar(?)), DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn])) < CVar(?), DateDiff('h', DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn]), CVar(?)) + 1, DateDiff('h', DateAdd('d', IIF(CVar(?) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) > CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) - 1, IIF(CVar(?) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(?)), [r].[StartedOn]) < CVar(?), DateDiff('d', [r].[StartedOn], CVar(?)) + 1, DateDiff('d', [r].[StartedOn], CVar(?)))), [r].[StartedOn]), CVar(?)))) MOD 24
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

