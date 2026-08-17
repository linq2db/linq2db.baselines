-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[Id1],
	[m_2].[MasterId],
	[d_1].[Id1],
	[d_1].[Id2],
	[d_1].[Value],
	[d_1].[ByteValues]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1],
			[d].[MasterId]
		FROM
			(
				SELECT
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				LIMIT @take
			) [t1]
				INNER JOIN [DetailClass] [d] ON [t1].[Id1] = [d].[MasterId]
	) [m_2]
		INNER JOIN [MasterClass] [d_1] ON [m_2].[Id1] = [m_2].[MasterId]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue],
	[m_2].[Id1]
FROM
	(
		SELECT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
		LIMIT @take
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

