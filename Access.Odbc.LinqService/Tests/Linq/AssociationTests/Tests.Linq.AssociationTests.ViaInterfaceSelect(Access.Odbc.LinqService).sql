BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MainEntity]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON ([m_1].[Id] = [d].[MainEntityId])

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MainEntity]

