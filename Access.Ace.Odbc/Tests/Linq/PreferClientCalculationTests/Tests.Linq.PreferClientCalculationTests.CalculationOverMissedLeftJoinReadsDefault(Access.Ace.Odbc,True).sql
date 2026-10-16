-- Access.Ace.Odbc AccessODBC
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(IIF([j].[Value1] IS NULL, 0, [j].[Value1]) - 1) as [c1],
	[j].[Date] as [Date_1],
	[e].[Date] as [Date_2]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- Access.Ace.Odbc AccessODBC
SELECT
	DatePart('yyyy', IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date]))
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

