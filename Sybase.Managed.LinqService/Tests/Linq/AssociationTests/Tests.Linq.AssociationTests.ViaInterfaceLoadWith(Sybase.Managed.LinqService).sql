BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	[t1].[Id]
FROM
	[MainEntity] [t1]

