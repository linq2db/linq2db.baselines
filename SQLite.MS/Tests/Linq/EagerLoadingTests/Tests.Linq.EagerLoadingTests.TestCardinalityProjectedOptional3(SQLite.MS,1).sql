-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[Id],
	[a_ObjectCRequired].[Id],
	[a_ObjectCRequired].[FK]
FROM
	[EntityA] [e]
		LEFT JOIN ([EntityB] [a_ObjectBOptional]
			LEFT JOIN [EntityC] [a_ObjectCRequired] ON [a_ObjectBOptional].[FK] = [a_ObjectCRequired].[Id])
		ON [e].[FK] = [a_ObjectBOptional].[Id]

