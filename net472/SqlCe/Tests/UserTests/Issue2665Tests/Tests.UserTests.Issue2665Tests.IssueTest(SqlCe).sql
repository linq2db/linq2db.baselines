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

CREATE TABLE [ProductAttributeTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY ([Id])
)

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
-- SqlCe

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- SqlCe

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- SqlCe

DROP TABLE [ProductTable]

