-- SqlCe

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

-- SqlCe

SELECT
	[t1].[Id]
FROM
	[MainEntity] [t1]

