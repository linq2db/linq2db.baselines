-- SqlServer.2016.MS SqlServer.2016
SELECT
	Coalesce([j].[Value1], 0) + 1,
	Coalesce([j].[Value1], 0) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

