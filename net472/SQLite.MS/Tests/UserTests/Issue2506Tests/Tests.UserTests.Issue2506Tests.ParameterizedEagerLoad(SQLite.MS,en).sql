﻿BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Item]
(
	[Id],
	[Name]
)
VALUES
(1,'Item 1'),
(2,'Item 2')

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ItemText]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ItemText]
(
	[ItemId] INTEGER       NOT NULL,
	[Lang]   NVarChar(255) NOT NULL,
	[Text]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ItemText] PRIMARY KEY ([ItemId], [Lang])
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite
DECLARE @lang NVarChar(2) -- String
SET     @lang = 'en'

SELECT
	[item_1].[Id],
	[detail].[Lang],
	[detail].[Text]
FROM
	[Item] [item_1]
		INNER JOIN [ItemText] [detail] ON [item_1].[Id] = [detail].[ItemId] AND [detail].[Lang] = @lang

BeforeExecute
RollbackTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Item] [item_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ItemText]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Item]

