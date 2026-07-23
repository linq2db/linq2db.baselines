-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[m_1].[MasterId],
	[d].[DetailId]
FROM
	(
		SELECT DISTINCT
			[g_1].[MasterId]
		FROM
			[DetailClass] [g_1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[MasterId] OR [d].[MasterId] IS NULL AND [m_1].[MasterId] IS NULL
ORDER BY
	[d].[DetailId]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT DISTINCT
	[g_1].[MasterId]
FROM
	[DetailClass] [g_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[DetailId],
	[t1].[MasterId],
	[t1].[DetailValue]
FROM
	[DetailClass] [t1]

