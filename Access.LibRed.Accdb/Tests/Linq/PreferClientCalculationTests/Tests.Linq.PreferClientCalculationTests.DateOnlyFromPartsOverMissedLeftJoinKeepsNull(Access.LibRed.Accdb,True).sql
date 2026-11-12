-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	DateSerial([j].[Value1], [j].[Value1], [j].[Value1]),
	DateSerial([j].[Value1], [j].[Value1], [j].[Value1])
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

