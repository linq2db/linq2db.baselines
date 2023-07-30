﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ProductTable]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductAttributeTable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ProductAttributeTable]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductAttributeMapping]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ProductAttributeMapping]
(
	[ProductId]          INTEGER NOT NULL,
	[ProductAttributeId] INTEGER NOT NULL,

	CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY ([ProductId], [ProductAttributeId])
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[pa].[Id]
FROM
	[ProductAttributeMapping] [pam]
		INNER JOIN [ProductAttributeTable] [pa] ON [pam].[ProductAttributeId] = [pa].[Id]
WHERE
	EXISTS(
		SELECT
			[p].[Id]
		FROM
			[ProductTable] [p]
				INNER JOIN [ProductAttributeMapping] [pam_1] ON [p].[Id] = [pam_1].[ProductId]
		WHERE
			[p].[Id] >= [pam].[ProductId]
		GROUP BY
			[p].[Id]
		HAVING
			Count(*) = 1
	)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductAttributeMapping]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductAttributeTable]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ProductTable]

