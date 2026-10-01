-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id],
	[j].[Id],
	[j].[Name],
	[k_1].[Id],
	[k_1].[Name]
FROM
	[KeyedEntity] [e]
		LEFT JOIN [KeyedEntity] [j] ON [j].[Id] = [e].[Id] + 1000
		LEFT JOIN [KeyedEntity] [k_1] ON [k_1].[Id] = [e].[Id] - 1

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[KeyedEntity] [t1]

