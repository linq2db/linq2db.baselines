-- SqlServer.2005.MS SqlServer.2005
SELECT
	[j].[Value1] + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

