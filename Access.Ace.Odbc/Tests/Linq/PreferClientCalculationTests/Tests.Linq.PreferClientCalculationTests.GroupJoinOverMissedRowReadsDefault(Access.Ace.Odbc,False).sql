-- Access.Ace.Odbc AccessODBC
SELECT
	[e].[Id],
	CStr(IIF([j].[Value1] IS NULL, 0, [j].[Value1])),
	IIF([j].[Value1] IS NULL, 0, [j].[Value1]) + 1
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([e].[Id] + 1000 = [j].[Id])

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Key],
	[t1].[Name]
FROM
	[TranslatedMemberEntity] [t1]

