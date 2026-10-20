-- Access.Ace.Odbc AccessODBC
SELECT
	DateAdd('d', -[e].[Value1], [j].[Date]),
	DateAdd('d', -1, [j].[Date])
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

