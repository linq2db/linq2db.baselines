-- Access.Ace.Odbc AccessODBC
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(IIF([j].[Value1] IS NULL, 0, [j].[Value1]) - 1) as [c1],
	[j].[Date] as [Date_1],
	DatePart('yyyy', [j].[Date]) as [Year_1],
	[e].[Date] as [Date_2]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

