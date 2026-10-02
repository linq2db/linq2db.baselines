-- Access.Jet.OleDb AccessOleDb
SELECT
	IIF([b].[FinishedOn] IS NULL, NULL, DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn])), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) / 86400),
	IIF([b].[FinishedOn] IS NULL, NULL, IIF(IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1, IIF(IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1, DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])))))
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
ORDER BY
	[x].[Id]

-- Access.Jet.OleDb AccessOleDb
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
WHERE
	DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', DateDiff('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn])), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) / 86400 > 1 AND
	[b].[FinishedOn] IS NOT NULL

