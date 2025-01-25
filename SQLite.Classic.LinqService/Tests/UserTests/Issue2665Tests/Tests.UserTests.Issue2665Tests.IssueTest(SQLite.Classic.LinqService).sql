BeforeExecute
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
			*
		FROM
			(
				SELECT
					[groupedProduct].[Id]
				FROM
					[ProductTable] [groupedProduct]
						INNER JOIN [ProductAttributeMapping] [pam_1] ON [groupedProduct].[Id] = [pam_1].[ProductId]
				GROUP BY
					[groupedProduct].[Id]
				HAVING
					COUNT(*) = 1
			) [p]
		WHERE
			[p].[Id] >= [pam].[ProductId]
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

