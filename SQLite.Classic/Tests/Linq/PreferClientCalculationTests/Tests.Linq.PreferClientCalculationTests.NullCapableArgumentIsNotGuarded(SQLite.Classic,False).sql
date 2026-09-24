-- SQLite.Classic SQLite
SELECT
	Coalesce([j].[Name], '') || '!'
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

