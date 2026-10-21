-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[e].[Id],
	Coalesce([j].[Value1], 0) + 1,
	Coalesce([j].[Value1], 0) | 1,
	IIF(Coalesce([j].[Value1], 0) < 5, N'a', N'b'),
	IIF(Coalesce([j].[Value1], 0) IN (0), N'y', N'n'),
	IIF(0 IN (Coalesce([j].[Value1], 0), 5), N'y', N'n'),
	-Coalesce([j].[Value1], 0) + 1,
	IIF(Coalesce([j].[Flag], 0) = 0, N't', N'f'),
	IIF(NOT (Coalesce([j].[Flag], 0) = 1 OR [e].[Id] < 0), N't', N'f'),
	Abs(Coalesce([j].[Value1], 0)) + 1,
	N'x' + CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)),
	ABS(Coalesce([j].[Value1], 0)) + 1,
	CAST(Coalesce([j].[Value1], 0) AS Float) + 1,
	IIF([e].[Id] > 0, Coalesce([j].[Value1], 0), 5) + 1,
	Coalesce([j].[Value1], 0) + 1,
	Coalesce([j].[Value1], 0) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

