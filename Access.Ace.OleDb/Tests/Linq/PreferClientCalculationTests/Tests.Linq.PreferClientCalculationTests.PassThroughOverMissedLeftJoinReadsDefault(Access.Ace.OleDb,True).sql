-- Access.Ace.OleDb AccessOleDb
SELECT
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1,
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

