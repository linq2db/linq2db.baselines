BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ProductTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ProductAttributeTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ProductAttributeMapping]
(
	[ProductId]          Int NOT NULL,
	[ProductAttributeId] Int NOT NULL,

	CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY CLUSTERED ([ProductId], [ProductAttributeId])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ProductTable]

