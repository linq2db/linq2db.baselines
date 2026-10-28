-- SqlServer.Contained SqlServer.2019
SELECT
	DateAdd(day, -[e].[Value1], [j].[Date]),
	DateAdd(day, -1, [j].[Date])
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

