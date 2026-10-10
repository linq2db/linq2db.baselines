-- SqlCe
SELECT
	[e].[Value1],
	DateAdd(day, [e].[Value1], Coalesce([j].[Date], '1753-01-01 00:00:00.000')),
	DatePart(year, DateAdd(day, [e].[Value1], Coalesce([j].[Date], '1753-01-01 00:00:00.000'))),
	DatePart(day, DateAdd(day, [e].[Value1], Coalesce([j].[Date], '1753-01-01 00:00:00.000')))
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

