-- SqlServer.Contained SqlServer.2025
SELECT
	[e].[Id],
	IIF(0 IN (Coalesce([j].[Value1], 0), 5), N'y', N'n'),
	IIF(0 IN (Coalesce([j].[Value1], 0), 5), N'y', N'n'),
	IIF(0 IN (Coalesce([j].[Value1], 0), 5), N'y', N'n')
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
	[e].[Id],
	IIF(0 IN (Coalesce([j].[Value1], 0), 5), N'y', N'n'),
	IIF(0 IN (Coalesce([j].[Value1], 0), 5), N'y', N'n'),
	IIF(0 IN (Coalesce([j].[Value1], 0), 5), N'y', N'n')
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

