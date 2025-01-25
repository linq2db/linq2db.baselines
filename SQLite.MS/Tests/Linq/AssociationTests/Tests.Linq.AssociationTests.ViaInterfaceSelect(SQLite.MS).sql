BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MainEntity]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubEntity]
(
	[Id]           INTEGER NOT NULL,
	[MainEntityId] INTEGER NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntity]

