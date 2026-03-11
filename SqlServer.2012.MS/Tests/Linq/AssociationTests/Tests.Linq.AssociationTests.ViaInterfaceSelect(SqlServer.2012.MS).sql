-- SqlServer.2012.MS SqlServer.2012

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

