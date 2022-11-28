BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductTable]', N'U') IS NOT NULL)
	DROP TABLE [ProductTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductTable]', N'U') IS NULL)
	CREATE TABLE [ProductTable]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductAttributeTable]', N'U') IS NOT NULL)
	DROP TABLE [ProductAttributeTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductAttributeTable]', N'U') IS NULL)
	CREATE TABLE [ProductAttributeTable]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductAttributeMapping]', N'U') IS NOT NULL)
	DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductAttributeMapping]', N'U') IS NULL)
	CREATE TABLE [ProductAttributeMapping]
	(
		[ProductId]          Int NOT NULL,
		[ProductAttributeId] Int NOT NULL,

		CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY CLUSTERED ([ProductId], [ProductAttributeId])
	)

BeforeExecute
-- SqlServer.2014

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
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductAttributeMapping]', N'U') IS NOT NULL)
	DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductAttributeTable]', N'U') IS NOT NULL)
	DROP TABLE [ProductAttributeTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[ProductTable]', N'U') IS NOT NULL)
	DROP TABLE [ProductTable]

