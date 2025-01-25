BeforeExecute
-- Access AccessOleDb

DROP TABLE [MainEntity]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON ([m_1].[Id] = [d].[MainEntityId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access AccessOleDb

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [MainEntity]

