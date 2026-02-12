-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[m_1].[Item1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t2].[Item1]
		FROM
			(
				SELECT
					[t1].[Id1] as [Item1]
				FROM
					[MasterClass] [t1]
				LIMIT @take
			) [t2]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Item1] = [d].[MasterId]

-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 20

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]
LIMIT @take

