-- SqlServer.Contained SqlServer.2019
SELECT
	[e].[Value1],
	DateAdd(day, [e].[Value1], [j].[Date]),
	DatePart(year, DateAdd(day, [e].[Value1], [j].[Date])),
	DatePart(day, DateAdd(day, [e].[Value1], [j].[Date]))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

