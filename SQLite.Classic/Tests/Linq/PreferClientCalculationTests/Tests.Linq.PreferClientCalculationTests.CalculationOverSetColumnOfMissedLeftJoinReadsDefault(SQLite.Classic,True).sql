-- SQLite.Classic SQLite
SELECT
	[x].[Id],
	[j].[Value1]
FROM
	[MissedJoinEntity] [x]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [x].[Id] + 1000
UNION ALL
SELECT
	[t1].[Id],
	[j_1].[Value1]
FROM
	[MissedJoinEntity] [t1]
		LEFT JOIN [MissedJoinEntity] [j_1] ON [j_1].[Id] = [t1].[Id] + 1000

