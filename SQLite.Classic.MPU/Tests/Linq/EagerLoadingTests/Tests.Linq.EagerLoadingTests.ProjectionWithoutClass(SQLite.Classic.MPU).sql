-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[x].[Id1]
		FROM
			[MasterClass] [x]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Id1]
FROM
	[MasterClass] [m_1]

