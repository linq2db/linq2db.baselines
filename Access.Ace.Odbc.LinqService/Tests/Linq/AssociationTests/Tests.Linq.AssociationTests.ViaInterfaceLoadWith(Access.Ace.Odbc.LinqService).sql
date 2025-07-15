BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON ([m_1].[Id] = [d].[MainEntityId])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[Id]
FROM
	[MainEntity] [t1]

