-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[e].[Date],
	DateSerial([j].[Value1], [j].[Value1], [j].[Value1]),
	DateSerial([j].[Value1], [j].[Value1], [j].[Value1]),
	CDate(CStr(DatePart('yyyy', [e].[Date])) + '-01-01 ' + Format(CASE
		WHEN [j].[Value1] IS NULL THEN 0
		ELSE [j].[Value1]
	END, String('0', 2)) + ':00:00')
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON ([j].[Id] = [e].[Id] + 1000)

