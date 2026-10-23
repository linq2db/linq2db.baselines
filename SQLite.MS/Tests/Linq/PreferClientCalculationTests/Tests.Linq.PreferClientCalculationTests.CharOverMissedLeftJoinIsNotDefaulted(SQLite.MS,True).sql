-- SQLite.MS SQLite
SELECT
	[e].[Id],
	[j].[Code]
FROM
	[CharJoinEntity] [e]
		LEFT JOIN [CharJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Code]
FROM
	[CharJoinEntity] [t1]

