-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[Id],
	[d_1].[Id],
	[d_1].[MasterId],
	[d_1].[Name]
FROM
	[MixedMaster] [m_1]
		INNER JOIN (
			SELECT
				[d].[Id],
				[d].[MasterId],
				[d].[Name],
				ROW_NUMBER() OVER (PARTITION BY [d].[MasterId] ORDER BY [d].[Id]) as [rn]
			FROM
				[MixedCorrelatedChild] [d]
		) [d_1] ON [d_1].[MasterId] = [m_1].[Id] AND [d_1].[rn] > 1
ORDER BY
	[m_1].[Id],
	[d_1].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[MixedDetachedChild] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[Id]
FROM
	[MixedMaster] [m_1]
ORDER BY
	[m_1].[Id]

