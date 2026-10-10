-- SqlServer.2022.MS SqlServer.2022
SELECT
	[e].[Id],
	CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	[j].[Value1]
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [e].[Id] + 1000 = [j].[Id]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Key],
	[t1].[Name]
FROM
	[TranslatedMemberEntity] [t1]

