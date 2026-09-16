-- Access.Ace.OleDb AccessOleDb
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(IIF([j].[Value1] IS NULL, 0, [j].[Value1]) - 1),
	[j].[Date],
	DatePart('yyyy', [j].[Date]),
	DateSerial(2000, 1, 1)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

-- Access.Ace.OleDb AccessOleDb
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

