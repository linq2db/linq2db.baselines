BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[Id]   INTEGER       NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ItemValue]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ItemValue]
(
	[Id]     INTEGER NOT NULL,
	[ItemId] INTEGER NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ItemValue]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Item]

