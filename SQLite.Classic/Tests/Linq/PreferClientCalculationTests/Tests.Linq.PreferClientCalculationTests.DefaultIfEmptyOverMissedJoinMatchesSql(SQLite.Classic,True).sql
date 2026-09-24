-- SQLite.Classic SQLite
SELECT
	[j].[Value1]
FROM
	[MissedJoinEntity] [t1]
		LEFT JOIN [MissedJoinEntity] [j] ON [t1].[Id] + 1000 = [j].[Id]

