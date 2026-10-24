-- SQLite.Classic SQLite
SELECT
	COUNT([j].[Value1] + 1) OVER (PARTITION BY [e].[Id])
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic SQLite
SELECT
	ROW_NUMBER() OVER (PARTITION BY [j].[Value1] + 1 ORDER BY [e].[Id])
FROM
	[PartialJoinEntity] [e]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1

