-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id]
FROM
	[PartialJoinEntity] [e]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
WHERE
	[j].[Value1] + 1 = 1

