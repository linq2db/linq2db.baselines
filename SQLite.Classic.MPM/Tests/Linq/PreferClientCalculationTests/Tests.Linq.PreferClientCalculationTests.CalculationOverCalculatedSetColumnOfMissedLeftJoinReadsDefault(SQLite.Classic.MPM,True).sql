-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT DISTINCT
	[y].[Id],
	[j].[Value1] + 1
FROM
	[MissedJoinEntity] [y]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [y].[Id] + 1000

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[y_1].[Id],
	[y_1].[P]
FROM
	(
		SELECT DISTINCT
			[y].[Id],
			[y].[V] + 1 as [P],
			[y].[V]
		FROM
			(
				SELECT
					[x].[Id],
					[j].[Value1] as [V]
				FROM
					[MissedJoinEntity] [x]
						LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [x].[Id] + 1000
				UNION ALL
				SELECT
					[t1].[Id],
					[j_1].[Value1] as [V]
				FROM
					[MissedJoinEntity] [t1]
						LEFT JOIN [MissedJoinEntity] [j_1] ON [j_1].[Id] = [t1].[Id] + 1000
			) [y]
	) [y_1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[g_3].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			[g_2].[V] + 1 as [Key_1]
		FROM
			(
				SELECT
					[j].[Value1] as [V]
				FROM
					[MissedJoinEntity] [g_1]
						LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [g_1].[Id] + 1000
				UNION ALL
				SELECT
					[j_1].[Value1] as [V]
				FROM
					[MissedJoinEntity] [t1]
						LEFT JOIN [MissedJoinEntity] [j_1] ON [j_1].[Id] = [t1].[Id] + 1000
			) [g_2]
	) [g_3]
GROUP BY
	[g_3].[Key_1]

