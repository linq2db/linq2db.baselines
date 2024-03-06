﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ProductTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ProductTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ProductAttributeTable]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_ProductAttributeTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ProductAttributeMapping]
(
	[ProductId]          Int NOT NULL,
	[ProductAttributeId] Int NOT NULL,

	CONSTRAINT [PK_ProductAttributeMapping] PRIMARY KEY CLUSTERED ([ProductId], [ProductAttributeId])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[pa].[Id]
FROM
	[ProductAttributeMapping] [pam]
		INNER JOIN [ProductAttributeTable] [pa] ON ([pam].[ProductAttributeId] = [pa].[Id])
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
						INNER JOIN [ProductAttributeMapping] [pam_1] ON ([groupedProduct].[Id] = [pam_1].[ProductId])
				GROUP BY
					[groupedProduct].[Id]
				HAVING
					Count(*) = 1
			) [p]
		WHERE
			[p].[Id] >= [pam].[ProductId]
	)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ProductAttributeMapping]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ProductAttributeTable]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ProductTable]

