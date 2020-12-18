﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemText]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ItemText]
(
	[ItemId] INTEGER       NOT NULL,
	[Lang]   NVarChar(255) NOT NULL,
	[Text]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ItemText] PRIMARY KEY ([ItemId], [Lang])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Lang NVarChar(2) -- String
SET     @Lang = 'de'

SELECT
	[item_1].[Id],
	[detail].[Lang],
	[detail].[Text]
FROM
	[Item] [item_1]
		INNER JOIN [ItemText] [detail] ON [item_1].[Id] = [detail].[ItemId] AND [detail].[Lang] = @Lang

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[item_1].[Name],
	[item_1].[Id]
FROM
	[Item] [item_1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemText]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

