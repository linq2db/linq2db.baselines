-- SqlServer.Contained SqlServer.2019
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(Coalesce([j].[Value1], 0) - 1),
	[j].[Date],
	[e].[Date]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.Contained SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SqlServer.Contained SqlServer.2019
SELECT
	DatePart(year, Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)))
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

