-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Date],
	DateSerial([j].[Value1], [j].[Value1], [j].[Value1]),
	DateSerial([j].[Value1], [j].[Value1], [j].[Value1]),
	CDate(CStr(DatePart('yyyy', [e].[Date])) + '-01-01 ' + Format(IIF([j].[Value1] IS NULL, 0, [j].[Value1]), String('0', 2)) + ':00:00')
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

