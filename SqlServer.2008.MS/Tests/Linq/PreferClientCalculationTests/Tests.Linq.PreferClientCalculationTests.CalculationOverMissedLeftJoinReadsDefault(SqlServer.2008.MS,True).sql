-- SqlServer.2008.MS SqlServer.2008
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(Coalesce([j].[Value1], 0) - 1),
	[j].[Date],
	[e].[Date]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date]
FROM
	[MissedJoinEntity] [t1]

