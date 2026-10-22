-- SqlServer.2017.MS SqlServer.2017
SELECT
	ISNULL([j].[Value1], -1),
	ISNULL([j].[Value1] + 1, -1)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

