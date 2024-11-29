BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ProductTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [ProductTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [ProductAttributeTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [ProductAttributeMapping]
(
	[ProductId]          Int NOT NULL,
	[ProductAttributeId] Int NOT NULL,

	CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY CLUSTERED ([ProductId], [ProductAttributeId])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[pa].[Id]
FROM
	[ProductAttributeMapping] [pam]
		INNER JOIN [ProductAttributeTable] [pa] ON ([pam].[ProductAttributeId] = [pa].[Id])
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT
					[groupedProduct].[Id]
				FROM
					[ProductTable] [groupedProduct]
						INNER JOIN [ProductAttributeMapping] [pam_1] ON ([groupedProduct].[Id] = [pam_1].[ProductId])
				GROUP BY
					[groupedProduct].[Id]
				HAVING
					COUNT(*) = 1
			) [p]
		WHERE
			[p].[Id] >= [pam].[ProductId]
	)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [ProductTable]

