BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON ([m_1].[Id] = [d].[MainEntityId])

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

