BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id1] as [Key_1]
		FROM
			[MasterManyId] [g_1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Key_1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[g_1].[Id1] as [Key_1]
		FROM
			[MasterManyId] [g_1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] > [m_1].[Key_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*),
	[g_1].[Id1]
FROM
	[MasterManyId] [g_1]
GROUP BY
	[g_1].[Id1]

