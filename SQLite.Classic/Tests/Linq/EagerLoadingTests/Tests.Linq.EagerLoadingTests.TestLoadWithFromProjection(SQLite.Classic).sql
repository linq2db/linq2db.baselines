BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_2].[DetailId],
	[m_2].[Id1],
	[d_2].[SubDetailId],
	[d_2].[DetailId],
	[d_2].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d_1].[DetailId],
			[t1].[Id1]
		FROM
			(
				SELECT DISTINCT
					[m_1].[Id1]
				FROM
					[MasterClass] [m_1]
						INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]
			) [t1]
				INNER JOIN [DetailClass] [d_1] ON [t1].[Id1] = [d_1].[MasterId]
	) [m_2]
		INNER JOIN [SubDetailClass] [d_2] ON [m_2].[DetailId] = [d_2].[DetailId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_2].[Id1],
	[d_1].[DetailId],
	[d_1].[MasterId],
	[d_1].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[m_1].[Id1]
		FROM
			[MasterClass] [m_1]
				INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]
	) [m_2]
		INNER JOIN [DetailClass] [d_1] ON [m_2].[Id1] = [d_1].[MasterId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_2].[DetailId],
	[d_1].[SubDetailId],
	[d_1].[DetailId],
	[d_1].[SubDetailValue],
	[a_Detail].[SubDetailId],
	[a_Detail].[DetailId],
	[a_Detail].[SubDetailValue]
FROM
	(
		SELECT DISTINCT
			[d].[DetailId]
		FROM
			[MasterClass] [m_1]
				INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]
	) [m_2]
		INNER JOIN [SubDetailClass] [d_1] ON [m_2].[DetailId] = [d_1].[DetailId]
		LEFT JOIN [SubDetailClass] [a_Detail] ON [d_1].[DetailId] = [a_Detail].[DetailId] OR [d_1].[DetailId] IS NULL AND [a_Detail].[DetailId] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[Id1],
	[r].[Id2],
	[r].[Value],
	[r].[ByteValues],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	[MasterClass] [r]
		INNER JOIN [DetailClass] [d] ON [r].[Id1] = [d].[MasterId]

