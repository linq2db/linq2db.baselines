-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[MasterId],
	[d].[Id1],
	[d].[Id2],
	[d].[Value],
	[d].[ByteValues]
FROM
	(
		SELECT DISTINCT
			[dd].[MasterId]
		FROM
			(
				SELECT
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
				ORDER BY
					[m_1].[Id2] DESC
				LIMIT @take
			) [t1]
				INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]
	) [m_2]
		INNER JOIN [MasterClass] [d] ON [d].[Id1] = [m_2].[MasterId]

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value_1],
	[t1].[ByteValues],
	[dd].[DetailId],
	[dd].[MasterId],
	[dd].[DetailValue]
FROM
	(
		SELECT
			[m_1].[Id1],
			[m_1].[Id2],
			[m_1].[Value] as [Value_1],
			[m_1].[ByteValues]
		FROM
			[MasterClass] [m_1]
		ORDER BY
			[m_1].[Id2] DESC
		LIMIT @take
	) [t1]
		INNER JOIN [DetailClass] [dd] ON [t1].[Id1] = [dd].[MasterId]

