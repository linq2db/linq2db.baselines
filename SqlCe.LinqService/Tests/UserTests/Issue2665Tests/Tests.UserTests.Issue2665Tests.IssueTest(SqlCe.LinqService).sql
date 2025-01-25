BeforeExecute
-- SqlCe

DROP TABLE [ProductTable]

BeforeExecute
-- SqlCe

CREATE TABLE [ProductTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- SqlCe

CREATE TABLE [ProductAttributeTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- SqlCe

CREATE TABLE [ProductAttributeMapping]
(
	[ProductId]          Int NOT NULL,
	[ProductAttributeId] Int NOT NULL,

	CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY ([ProductId], [ProductAttributeId])
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- SqlCe

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- SqlCe

DROP TABLE [ProductTable]

