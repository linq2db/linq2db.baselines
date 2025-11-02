-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id]
FROM
	[MainEntity] [t1]

