-- SqlServer.2016.MS SqlServer.2016
SELECT
	[e].[Id],
	[e].[Value1],
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
ORDER BY
	[e].[Id]

