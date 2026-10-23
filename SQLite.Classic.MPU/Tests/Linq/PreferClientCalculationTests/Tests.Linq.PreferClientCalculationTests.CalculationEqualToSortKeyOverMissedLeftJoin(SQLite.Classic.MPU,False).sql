-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT DISTINCT
	[j].[Value1] + 1
FROM
	[PartialJoinEntity] [t1]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [t1].[Id] + 1

