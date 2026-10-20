-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[g_2].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			[j].[Value1] + 1 as [Key_1]
		FROM
			[PartialJoinEntity] [g_1]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [g_1].[Id] + 1
	) [g_2]
GROUP BY
	[g_2].[Key_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id]
FROM
	[PartialJoinEntity] [e]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
ORDER BY
	[j].[Value1] + 1,
	[e].[Id]

