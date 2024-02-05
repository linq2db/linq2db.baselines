BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DisTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DisTable]
(
	[DisTypeID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [JurTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [JurTable]
(
	[JurCode] NVarChar(2) NOT NULL,

	CONSTRAINT [PK_JurTable] PRIMARY KEY CLUSTERED ([JurCode])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DisTypeTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DisTypeTable]
(
	[DisTypeID] Int          NOT NULL,
	[JurCode]   NVarChar(50) NOT NULL,

	CONSTRAINT [PK_DisTypeTable] PRIMARY KEY CLUSTERED ([DisTypeID])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[d].[DisTypeID]
FROM
	([DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON (Iif([d].[DisTypeID] = 1, 1, Iif([d].[DisTypeID] = 2, 2, Iif([d].[DisTypeID] = 4, 4, Iif([d].[DisTypeID] = 5, 5, 5)))) = [a_DisType].[DisTypeID]))
		INNER JOIN [JurTable] [j] ON ([a_DisType].[JurCode] = [j].[JurCode])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DisTypeTable]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [JurTable]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DisTable]

