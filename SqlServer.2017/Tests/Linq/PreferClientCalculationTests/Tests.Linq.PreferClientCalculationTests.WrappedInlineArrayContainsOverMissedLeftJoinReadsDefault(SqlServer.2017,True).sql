-- SqlServer.2017
SELECT
	[m_1].[Value1],
	[d].[item]
FROM
	(
		SELECT DISTINCT
			[j].[Value1]
		FROM
			[MissedJoinEntity] [t1]
				LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [t1].[Id] + 1000
	) [m_1]
		CROSS APPLY (VALUES
			([m_1].[Value1]), (5)
		) [d]([item])

-- SqlServer.2017
SELECT
	[m_1].[Value1],
	[d].[item]
FROM
	(
		SELECT DISTINCT
			[j].[Value1]
		FROM
			[MissedJoinEntity] [t1]
				LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [t1].[Id] + 1000
	) [m_1]
		CROSS APPLY (VALUES
			([m_1].[Value1]), (5)
		) [d]([item])

-- SqlServer.2017
SELECT
	[e].[Id],
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SqlServer.2017
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

