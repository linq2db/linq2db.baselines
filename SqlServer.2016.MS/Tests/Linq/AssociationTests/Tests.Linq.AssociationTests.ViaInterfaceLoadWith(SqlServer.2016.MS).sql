-- SqlServer.2016.MS SqlServer.2016

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id]
FROM
	[MainEntity] [t1]

