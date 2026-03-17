-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON ([m_1].[Id] = [d].[MainEntityId])

-- Access.Ace.Odbc AccessODBC

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

