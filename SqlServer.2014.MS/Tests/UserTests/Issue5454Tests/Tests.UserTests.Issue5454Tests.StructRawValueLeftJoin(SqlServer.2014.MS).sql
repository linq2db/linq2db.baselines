-- SqlServer.2014.MS SqlServer.2014

SELECT
	[g_1].[StatsTypeId],
	[st].[FullName],
	[g_1].[GroupId]
FROM
	[GroupStatsType] [g_1]
		LEFT JOIN [StatsType] [st] ON [st].[Id] = [g_1].[StatsTypeId]

