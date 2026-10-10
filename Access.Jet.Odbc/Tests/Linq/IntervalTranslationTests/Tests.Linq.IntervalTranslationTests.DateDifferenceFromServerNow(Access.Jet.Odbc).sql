-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff('d', [r].[ClosedOn], Now) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now), DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn])), Now)) / 86400 > 300

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	DateDiff('d', [r].[ClosedOn], Now) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now), DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn])), Now)) / 86400

-- Access.Jet.Odbc AccessODBC
SELECT TOP 2
	DateDiff('d', [r].[ClosedOn], Now) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now), DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn])), Now)) / 86400,
	IIF(Now >= DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn]), Now), DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn])) > Now, DateDiff('h', DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn]), Now) - 1, IIF(Now < DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn]), Now), DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn])) < Now, DateDiff('h', DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn]), Now) + 1, DateDiff('h', DateAdd('d', IIF(Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now, DateDiff('d', [r].[ClosedOn], Now) - 1, IIF(Now < [r].[ClosedOn] AND DateAdd('d', DateDiff('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now, DateDiff('d', [r].[ClosedOn], Now) + 1, DateDiff('d', [r].[ClosedOn], Now))), [r].[ClosedOn]), Now))) MOD 24
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

