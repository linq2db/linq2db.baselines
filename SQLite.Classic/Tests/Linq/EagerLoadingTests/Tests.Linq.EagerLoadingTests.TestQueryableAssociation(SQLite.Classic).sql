BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1] AND [d].[MasterId] = [m_1].[Id2]
WHERE
	[m_1].[Id1] > 5 AND [d].[DetailId] % 2 = 0

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1] AND [d].[MasterId] = [m_1].[Id2]
WHERE
	[m_1].[Id1] > 5 AND [d].[DetailId] % 2 = 0

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[m_1].[Id2],
	[d].[DetailValue]
FROM
	[MasterClass] [m_1]
		INNER JOIN [DetailClass] [d] ON [d].[MasterId] = [m_1].[Id1] AND [d].[MasterId] = [m_1].[Id2]
WHERE
	[m_1].[Id1] > 5 AND [d].[DetailId] % 2 = 0

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id1],
	[m_1].[Id2]
FROM
	[MasterClass] [m_1]
WHERE
	[m_1].[Id1] > 5

