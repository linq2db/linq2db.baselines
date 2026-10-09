-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('d', [r].[OpenedOn], [r].[ClosedOnNullable]) + IIF([r].[ClosedOnNullable] IS NULL, NULL, CDbl(DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn]))), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable]))) / 86400 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]) + IIF([r].[ClosedOnNullable] IS NULL, NULL, CDbl(DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('h', DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('h', DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('h', DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn]))), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable]))) / 3600 > 0

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[Issue5777Row] [r]
WHERE
	DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#) + IIF([r].[ClosedOnNullable] IS NULL, NULL, CDbl(DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#), [r].[ClosedOnNullable])), #2026-10-01#)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#), [r].[ClosedOnNullable])), #2026-10-01#), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('d', DateDiff('d', [r].[ClosedOnNullable], #2026-10-01#), [r].[ClosedOnNullable]))), #2026-10-01#)) / 86400 > 0

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]) + IIF([r].[ClosedOnNullable] IS NULL, NULL, CDbl(DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('h', DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('h', DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable])), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, DateAdd('h', DateDiff('h', [r].[OpenedOn], [r].[ClosedOnNullable]), [r].[OpenedOn]))), IIF([r].[ClosedOnNullable] IS NULL, #1899-12-30#, [r].[ClosedOnNullable]))) / 3600
FROM
	[Issue5777Row] [r]
WHERE
	[r].[Id] = 1

