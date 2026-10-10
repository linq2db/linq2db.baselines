-- Access.Jet.OleDb AccessOleDb
SELECT
	[e].[Value1],
	DateAdd('d', [e].[Value1], IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date])),
	DatePart('yyyy', DateAdd('d', [e].[Value1], IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date]))),
	DatePart('d', DateAdd('d', [e].[Value1], IIF([j].[Date] IS NULL, #0100-01-01#, [j].[Date])))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

