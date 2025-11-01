-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[Id1],
	[d].[DetailId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
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
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT DISTINCT
	[e].[Id1],
	[e].[Id2],
	[e].[Value_1],
	[e].[ByteValues]
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
	) [e]

