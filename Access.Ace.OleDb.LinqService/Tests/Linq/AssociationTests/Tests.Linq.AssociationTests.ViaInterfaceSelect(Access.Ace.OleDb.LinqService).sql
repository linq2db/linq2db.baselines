BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [MainEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON ([m_1].[Id] = [d].[MainEntityId])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [MainEntity]

