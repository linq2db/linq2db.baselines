-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[e].[Id],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[Id],
	[a_ObjectC].[Id],
	[a_ObjectC].[FK]
FROM
	[EntityA] [e]
		LEFT JOIN ([EntityB] [a_ObjectBOptional]
			LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectBOptional].[FK] = [a_ObjectC].[Id])
		ON [e].[FK] = [a_ObjectBOptional].[Id]

