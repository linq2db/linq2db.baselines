-- SqlServer.2014.MS SqlServer.2014
SELECT
	ISNULL([j].[Value1], -1),
	ISNULL([j].[Value1] + 1, -1)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

