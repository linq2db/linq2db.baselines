-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[DetailId],
	[m_2].[Id1],
	[d_1].[SubDetailId],
	'S' || [m_2].[Id1] || '/' || [m_2].[DetailId] || '/' || [d_1].[SubDetailId]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId],
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
				INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]
	) [m_2]
		INNER JOIN [SubDetailClass] [d_1] ON [d_1].[DetailId] = [m_2].[DetailId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[DetailId],
	[m_2].[Id1],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId],
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
				INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]
	) [m_2]
		INNER JOIN [SubDetailClass] [d_1] ON [m_2].[DetailId] = [d_1].[DetailId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	'D' || [m_1].[Id1] || '/' || [d].[DetailId]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	'M' || [m_1].[Id1]
FROM
	[MasterClass] [m_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[DetailId],
	[m_2].[Id1],
	[d_1].[SubDetailId],
	'S' || [m_2].[Id1] || '/' || [m_2].[DetailId] || '/' || [d_1].[SubDetailId]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId],
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
				INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]
	) [m_2]
		INNER JOIN [SubDetailClass] [d_1] ON [d_1].[DetailId] = [m_2].[DetailId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_2].[DetailId],
	[m_2].[Id1],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId],
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
				INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]
	) [m_2]
		INNER JOIN [SubDetailClass] [d_1] ON [m_2].[DetailId] = [d_1].[DetailId]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	'D' || [m_1].[Id1] || '/' || [d].[DetailId]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	'M' || [m_1].[Id1]
FROM
	[MasterClass] [m_1]

