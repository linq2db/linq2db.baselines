BeforeExecute
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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Item 1'

INSERT INTO [Item]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Item 2'

INSERT INTO [Item]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

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
DECLARE @ItemId  -- Int32
SET     @ItemId = 1
DECLARE @Lang NVarChar(2) -- String
SET     @Lang = 'de'
DECLARE @Text NVarChar(18) -- String
SET     @Text = 'Item 1 german text'

INSERT INTO [ItemText]
(
	[ItemId],
	[Lang],
	[Text]
)
VALUES
(
	@ItemId,
	@Lang,
	@Text
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ItemId  -- Int32
SET     @ItemId = 1
DECLARE @Lang NVarChar(2) -- String
SET     @Lang = 'en'
DECLARE @Text NVarChar(19) -- String
SET     @Text = 'Item 1 english text'

INSERT INTO [ItemText]
(
	[ItemId],
	[Lang],
	[Text]
)
VALUES
(
	@ItemId,
	@Lang,
	@Text
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ItemId  -- Int32
SET     @ItemId = 2
DECLARE @Lang NVarChar(2) -- String
SET     @Lang = 'de'
DECLARE @Text NVarChar(18) -- String
SET     @Text = 'Item 2 german text'

INSERT INTO [ItemText]
(
	[ItemId],
	[Lang],
	[Text]
)
VALUES
(
	@ItemId,
	@Lang,
	@Text
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @ItemId  -- Int32
SET     @ItemId = 2
DECLARE @Lang NVarChar(2) -- String
SET     @Lang = 'en'
DECLARE @Text NVarChar(19) -- String
SET     @Text = 'Item 2 english text'

INSERT INTO [ItemText]
(
	[ItemId],
	[Lang],
	[Text]
)
VALUES
(
	@ItemId,
	@Lang,
	@Text
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @lang NVarChar(2) -- String
SET     @lang = 'de'

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

