BeforeExecute
-- Access AccessOleDb

DROP TABLE [DisTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DisTable]
(
	[DisTypeID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [JurTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [JurTable]
(
	[JurCode] NVarChar(2) NOT NULL,

	CONSTRAINT [PK_JurTable] PRIMARY KEY CLUSTERED ([JurCode])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DisTypeTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DisTypeTable]
(
	[DisTypeID] Int          NOT NULL,
	[JurCode]   NVarChar(50) NOT NULL,

	CONSTRAINT [PK_DisTypeTable] PRIMARY KEY CLUSTERED ([DisTypeID])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[d].[DisTypeID]
FROM
	([DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON (IIF([d].[DisTypeID] = 1, 1, IIF([d].[DisTypeID] = 2, 2, IIF([d].[DisTypeID] = 4, 4, IIF([d].[DisTypeID] = 5, 5, NULL)))) = [a_DisType].[DisTypeID]))
		INNER JOIN [JurTable] [j] ON ([a_DisType].[JurCode] = [j].[JurCode])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DisTypeTable]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [JurTable]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DisTable]

