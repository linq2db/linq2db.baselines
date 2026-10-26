-- SqlServer.CS SqlServer.2025
SELECT
	DATETIMEFROMPARTS([j].[Value1], [j].[Value1], [j].[Value1], 0, 0, 0, 0),
	DATETIMEFROMPARTS([j].[Value1], [j].[Value1], [j].[Value1], 0, 0, 0, 0)
FROM
	[TranslatedMemberEntity] [e]
		LEFT JOIN [TranslatedMemberEntity] [j] ON [j].[Id] = [e].[Id] + 1000

