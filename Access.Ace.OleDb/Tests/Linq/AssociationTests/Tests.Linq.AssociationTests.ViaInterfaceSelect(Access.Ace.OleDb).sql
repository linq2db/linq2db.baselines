-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON ([m_1].[Id] = [d].[MainEntityId])

-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

