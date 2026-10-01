-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('d', [r].[ClosedOn], #2026-10-01#) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#), DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn])), #2026-10-01#)) / 86400 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('h', [r].[ClosedOn], #2026-10-01#) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#), DateAdd('h', DateDiff('h', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn])), #2026-10-01#)) / 3600 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('n', [r].[ClosedOn], #2026-10-01#) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#), DateAdd('n', DateDiff('n', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn])), #2026-10-01#)) / 60 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	IIF(#2026-10-01# >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]) > #2026-10-01#, DateDiff('d', [r].[ClosedOn], #2026-10-01#) - 1, IIF(#2026-10-01# < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]) < #2026-10-01#, DateDiff('d', [r].[ClosedOn], #2026-10-01#) + 1, DateDiff('d', [r].[ClosedOn], #2026-10-01#))) > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#) + IIF([r].[ClosedOnNullable] IS NULL, NULL, CDbl(DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#), [r].[ClosedOnNullable])), #2026-10-01#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#), [r].[ClosedOnNullable])), #2026-10-01#), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#), [r].[ClosedOnNullable]))), #2026-10-01#)) / 86400 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	DateDiff('d', [r].[ClosedOn], #2026-10-01#) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn]), #2026-10-01#), DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-10-01#), [r].[ClosedOn])), #2026-10-01#)) / 86400

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[ClosedOn]
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

