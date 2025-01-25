BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

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
			[DetailClass] [d]
				INNER JOIN [MasterClass] [m_1] ON [m_1].[Id1] = [d].[MasterId]
		WHERE
			[m_1].[Id1] IN (1, 2)
	) [m_2]
		INNER JOIN [SubDetailClass] [d_1] ON [m_2].[DetailId] = [d_1].[DetailId]
		LEFT JOIN [SubDetailClass] [a_Detail] ON [d_1].[DetailId] = [a_Detail].[DetailId] OR [d_1].[DetailId] IS NULL AND [a_Detail].[DetailId] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	[DetailClass] [d]
		INNER JOIN [MasterClass] [m_1] ON [m_1].[Id1] = [d].[MasterId]
WHERE
	[m_1].[Id1] IN (1, 2)

