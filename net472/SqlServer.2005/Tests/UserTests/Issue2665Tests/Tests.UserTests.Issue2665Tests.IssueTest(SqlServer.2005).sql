BeforeExecute
-- SqlServer.2005

CREATE TABLE [ProductTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [ProductAttributeTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [ProductAttributeMapping]
(
	[ProductId]          Int NOT NULL,
	[ProductAttributeId] Int NOT NULL,

	CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY CLUSTERED ([ProductId], [ProductAttributeId])
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- SqlServer.2005

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- SqlServer.2005

DROP TABLE [ProductTable]

