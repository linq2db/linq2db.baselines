BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [ProductTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [ProductAttributeTable]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

CREATE TABLE [ProductAttributeMapping]
(
	[ProductId]          Int NOT NULL,
	[ProductAttributeId] Int NOT NULL,

	CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY CLUSTERED ([ProductId], [ProductAttributeId])
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DROP TABLE [ProductTable]

