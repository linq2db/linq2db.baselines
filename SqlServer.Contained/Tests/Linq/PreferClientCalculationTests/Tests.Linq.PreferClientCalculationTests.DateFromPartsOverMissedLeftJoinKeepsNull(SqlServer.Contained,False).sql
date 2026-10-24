-- SqlServer.Contained SqlServer.2019
SELECT
	[e].[Date],
	DATETIME2FROMPARTS([j].[Value1], [j].[Value1], [j].[Value1], 0, 0, 0, 0, 3),
	DATETIME2FROMPARTS([j].[Value1], [j].[Value1], [j].[Value1], 0, 0, 0, 0, 3),
	DATETIME2FROMPARTS(DatePart(year, [e].[Date]), 1, 1, Coalesce([j].[Value1], 0), 0, 0, 0, 3)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

