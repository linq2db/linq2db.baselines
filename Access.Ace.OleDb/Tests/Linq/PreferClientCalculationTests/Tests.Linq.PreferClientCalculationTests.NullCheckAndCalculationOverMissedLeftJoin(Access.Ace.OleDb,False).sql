-- Access.Ace.OleDb AccessOleDb
SELECT
	[e].[Id],
	IIF([j].[Id] IS NULL, -1, IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1),
	[j].[Value1],
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[j].[Id],
	[j].[Value1],
	[j].[Date],
	[j].[Flag],
	[j].[Name]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

