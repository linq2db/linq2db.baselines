-- SqlCe

SELECT
	[g_1].[StatsTypeId],
	[st].[FullName] as [StatsTypeName],
	[g_1].[GroupId]
FROM
	[GroupStatsType] [g_1]
		LEFT JOIN [StatsType] [st] ON [st].[Id] = [g_1].[StatsTypeId]

