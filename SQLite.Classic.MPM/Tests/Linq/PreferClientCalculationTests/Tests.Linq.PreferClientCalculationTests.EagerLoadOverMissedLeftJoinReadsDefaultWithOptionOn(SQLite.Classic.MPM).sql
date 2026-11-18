-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[m_1].[Value1],
	[d].[Value1]
FROM
	(
		SELECT DISTINCT
			[t1].[Id],
			[j].[Value1]
		FROM
			[MissedJoinEntity] [t1]
				LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [t1].[Id] + 1000
	) [m_1]
		INNER JOIN [MissedJoinEntity] [d] ON [d].[Id] = [m_1].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id],
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

