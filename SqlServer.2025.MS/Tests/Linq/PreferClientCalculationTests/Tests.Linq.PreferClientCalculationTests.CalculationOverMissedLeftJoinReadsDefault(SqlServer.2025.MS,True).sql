-- SqlServer.2025.MS SqlServer.2025
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(Coalesce([j].[Value1], 0) - 1),
	[j].[Date],
	[e].[Date]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SqlServer.2025.MS SqlServer.2025
SELECT
	DatePart(year, Coalesce([j].[Date], DATETIME2FROMPARTS(1, 1, 1, 0, 0, 0, 0, 7)))
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

