-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MainEntityId]
FROM
	[MainEntity] [m_1]
		INNER JOIN [SubEntity] [d] ON [m_1].[Id] = [d].[MainEntityId]

-- SQLite.MS SQLite

SELECT
	[x].[Id]
FROM
	[MainEntity] [x]

