-- SqlServer.Contained SqlServer.2025
SELECT
	[e].[Id],
	[j].[Value1],
	[j].[Flag],
	Abs(Coalesce([j].[Value1], 0)),
	ABS(Coalesce([j].[Value1], 0)),
	Coalesce([j].[Value1], 0) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.Contained SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SqlServer.Contained SqlServer.2025
SELECT
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

