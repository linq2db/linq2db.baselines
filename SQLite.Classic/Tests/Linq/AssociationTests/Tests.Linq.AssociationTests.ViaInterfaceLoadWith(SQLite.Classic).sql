BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id]
FROM
	[MainEntity] [t1]

