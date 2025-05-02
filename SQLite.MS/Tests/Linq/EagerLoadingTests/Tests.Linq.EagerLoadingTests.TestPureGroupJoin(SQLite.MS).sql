BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 20

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t2].[Id1]
		FROM
			(
				SELECT
					[t1].[Id1]
				FROM
					[MasterClass] [t1]
				LIMIT @p
			) [t2]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 20

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]
LIMIT @p

