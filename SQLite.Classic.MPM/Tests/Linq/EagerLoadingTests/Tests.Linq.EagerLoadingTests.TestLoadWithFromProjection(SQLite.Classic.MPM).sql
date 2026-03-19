-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[DetailId],
	[m_1].[Id1],
	[d_2].[SubDetailId],
	[d_2].[DetailId],
	[d_2].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d_1].[DetailId],
			[t2].[Id1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id1]
				FROM
					[MasterClass] [t1]
						INNER JOIN [DetailClass] [d] ON [t1].[Id1] = [d].[MasterId]
			) [t2]
				INNER JOIN [DetailClass] [d_1] ON [t2].[Id1] = [d_1].[MasterId]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_2] ON [m_1].[DetailId] = [d_2].[DetailId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[d_1].[DetailId],
	[d_1].[MasterId],
	[d_1].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
		FROM
			[MasterClass] [t1]
				INNER JOIN [DetailClass] [d] ON [t1].[Id1] = [d].[MasterId]
	) [m_1]
		INNER JOIN [DetailClass] [d_1] ON [m_1].[Id1] = [d_1].[MasterId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[DetailId],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue],
	[a_Detail].[SubDetailId],
	[a_Detail].[DetailId],
	[a_Detail].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId]
		FROM
			[MasterClass] [t1]
				INNER JOIN [DetailClass] [d] ON [t1].[Id1] = [d].[MasterId]
	) [m_1]
		INNER JOIN [SubDetailClass] [d_1] ON [m_1].[DetailId] = [d_1].[DetailId]
		LEFT JOIN [SubDetailClass] [a_Detail] ON [d_1].[DetailId] = [a_Detail].[DetailId] OR [d_1].[DetailId] IS NULL AND [a_Detail].[DetailId] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[Id1],
	[r].[Id2],
	[r].[Value],
	[r].[ByteValues],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	[MasterClass] [r]
		INNER JOIN [DetailClass] [d] ON [r].[Id1] = [d].[MasterId]

