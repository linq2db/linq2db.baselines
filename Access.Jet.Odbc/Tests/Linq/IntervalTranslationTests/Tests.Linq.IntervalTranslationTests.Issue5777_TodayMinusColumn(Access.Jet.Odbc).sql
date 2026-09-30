-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('d', [r].[ClosedOn], #2026-09-30#) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#), DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn])), #2026-09-30#)) / 86400 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('h', [r].[ClosedOn], #2026-09-30#) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#), DateAdd('h', DateDiff('h', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn])), #2026-09-30#)) / 3600 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('n', [r].[ClosedOn], #2026-09-30#) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#), DateAdd('n', DateDiff('n', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn])), #2026-09-30#)) / 60 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	IIF(#2026-09-30# >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]) > #2026-09-30#, DateDiff('d', [r].[ClosedOn], #2026-09-30#) - 1, IIF(#2026-09-30# < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]) < #2026-09-30#, DateDiff('d', [r].[ClosedOn], #2026-09-30#) + 1, DateDiff('d', [r].[ClosedOn], #2026-09-30#))) > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('d', [r].[ClosedOnNullable], #2026-09-30#) + IIF([r].[ClosedOnNullable] IS NULL, NULL, CDbl(DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-09-30#), [r].[ClosedOnNullable])), #2026-09-30#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-09-30#), [r].[ClosedOnNullable])), #2026-09-30#), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-09-30#), [r].[ClosedOnNullable]))), #2026-09-30#)) / 86400 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
ORDER BY
	DateDiff('d', [r].[ClosedOn], #2026-09-30#) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn]), #2026-09-30#), DateAdd('d', DateDiff('d', [r].[ClosedOn], #2026-09-30#), [r].[ClosedOn])), #2026-09-30#)) / 86400

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[ClosedOn]
FROM
	[Issue5777Row] [r]
ORDER BY
	[r].[Id]

