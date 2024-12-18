BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DisTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DisTable]
(
	[DisTypeID] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [JurTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [JurTable]
(
	[JurCode] NVarChar(2) NOT NULL,

	CONSTRAINT [PK_JurTable] PRIMARY KEY CLUSTERED ([JurCode])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DisTypeTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DisTypeTable]
(
	[DisTypeID] Int          NOT NULL,
	[JurCode]   NVarChar(50) NOT NULL,

	CONSTRAINT [PK_DisTypeTable] PRIMARY KEY CLUSTERED ([DisTypeID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[d].[DisTypeID]
FROM
	([DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON (IIF([d].[DisTypeID] = 1, 1, IIF([d].[DisTypeID] = 2, 2, IIF([d].[DisTypeID] = 4, 4, IIF([d].[DisTypeID] = 5, 5, NULL)))) = [a_DisType].[DisTypeID] AND IIF([d].[DisTypeID] = 1, 1, IIF([d].[DisTypeID] = 2, 2, IIF([d].[DisTypeID] = 4, 4, IIF([d].[DisTypeID] = 5, 5, NULL)))) IS NOT NULL))
		INNER JOIN [JurTable] [j] ON ([a_DisType].[JurCode] = [j].[JurCode])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DisTypeTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [JurTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DisTable]

