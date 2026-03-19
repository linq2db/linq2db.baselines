-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[DetailId],
	[d].[SubDetailId],
	[d].[DetailId],
	[d].[SubDetailValue],
	[a_Detail].[SubDetailId],
	[a_Detail].[DetailId],
	[a_Detail].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[DetailId]
		FROM
			[DetailClass] [t1]
				INNER JOIN [MasterClass] [m_1] ON [m_1].[Id1] = [t1].[MasterId]
		WHERE
			[m_1].[Id1] IN (1, 2)
	) [m_2]
		INNER JOIN [SubDetailClass] [d] ON [m_2].[DetailId] = [d].[DetailId]
		LEFT JOIN [SubDetailClass] [a_Detail] ON [d].[DetailId] = [a_Detail].[DetailId] OR [d].[DetailId] IS NULL AND [a_Detail].[DetailId] IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[DetailId],
	[t1].[MasterId],
	[t1].[DetailValue]
FROM
	[DetailClass] [t1]
		INNER JOIN [MasterClass] [m_1] ON [m_1].[Id1] = [t1].[MasterId]
WHERE
	[m_1].[Id1] IN (1, 2)

