BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Item]
(
	[Id],
	[Name]
)
VALUES
(1,'Item 1'),
(2,'Item 2')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemText]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ItemText]
(
	[ItemId] INTEGER       NOT NULL,
	[Lang]   NVarChar(255) NOT NULL,
	[Text]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ItemText] PRIMARY KEY ([ItemId], [Lang])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [ItemText]
(
	[ItemId],
	[Lang],
	[Text]
)
VALUES
(1,'de','Item 1 german text'),
(1,'en','Item 1 english text'),
(2,'de','Item 2 german text'),
(2,'en','Item 2 english text')

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @lang NVarChar(2) -- String
SET     @lang = 'en'

SELECT
	[m_1].[Id],
	[d].[Lang],
	[d].[Text]
FROM
	[Item] [m_1]
		INNER JOIN [ItemText] [d] ON [m_1].[Id] = [d].[ItemId]
WHERE
	[d].[Lang] = @lang

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Item] [item_1]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemText]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

