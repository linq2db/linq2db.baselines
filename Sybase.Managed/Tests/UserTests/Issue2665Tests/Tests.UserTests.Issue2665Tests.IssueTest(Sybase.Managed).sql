BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductTable') IS NOT NULL)
	DROP TABLE [ProductTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductTable') IS NULL)
	EXECUTE('
		CREATE TABLE [ProductTable]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255) NOT NULL,

			CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductAttributeTable') IS NOT NULL)
	DROP TABLE [ProductAttributeTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductAttributeTable') IS NULL)
	EXECUTE('
		CREATE TABLE [ProductAttributeTable]
		(
			[Id]   Int           NOT NULL,
			[Name] NVarChar(255) NOT NULL,

			CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductAttributeMapping') IS NOT NULL)
	DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductAttributeMapping') IS NULL)
	EXECUTE('
		CREATE TABLE [ProductAttributeMapping]
		(
			[ProductId]          Int NOT NULL,
			[ProductAttributeId] Int NOT NULL,

			CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY CLUSTERED ([ProductId], [ProductAttributeId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[pa].[Id]
FROM
	[ProductAttributeMapping] [pam]
		INNER JOIN [ProductAttributeTable] [pa] ON [pam].[ProductAttributeId] = [pa].[Id]
WHERE
	 EXISTS (
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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductAttributeMapping') IS NOT NULL)
	DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductAttributeTable') IS NOT NULL)
	DROP TABLE [ProductAttributeTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ProductTable') IS NOT NULL)
	DROP TABLE [ProductTable]

