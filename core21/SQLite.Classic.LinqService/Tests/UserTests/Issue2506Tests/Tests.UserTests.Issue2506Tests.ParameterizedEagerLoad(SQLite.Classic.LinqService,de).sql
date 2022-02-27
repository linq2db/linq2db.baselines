BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Item]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Item]
(
	[Id],
	[Name]
)
VALUES
(1,'Item 1'),
(2,'Item 2')

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [ItemText]
(
	[ItemId] INTEGER       NOT NULL,
	[Lang]   NVarChar(255) NOT NULL,
	[Text]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ItemText] PRIMARY KEY ([ItemId], [Lang])
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @Lang_1 NVarChar(2) -- String
SET     @Lang_1 = 'de'

SELECT
	[item_1].[Id],
	[detail].[Lang],
	[detail].[Text]
FROM
	[Item] [item_1]
		INNER JOIN [ItemText] [detail] ON [item_1].[Id] = [detail].[ItemId] AND [detail].[Lang] = @Lang_1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Item] [item_1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [ItemText]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Item]

