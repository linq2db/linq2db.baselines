-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_2].[cond],
	[d_1].[Id1],
	[d_1].[Id2],
	[d_1].[Value],
	[d_1].[ByteValues]
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN [t1].[Id1] = [d].[MasterId] THEN 1
				ELSE 0
			END as [cond]
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
		INNER JOIN [MasterClass] [d_1] ON [m_2].[cond]

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue],
	CASE
		WHEN [m_2].[Id1] = [d].[MasterId] THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
		LIMIT @take
	) [m_2]
		INNER JOIN [DetailClass] [d] ON [m_2].[Id1] = [d].[MasterId]

