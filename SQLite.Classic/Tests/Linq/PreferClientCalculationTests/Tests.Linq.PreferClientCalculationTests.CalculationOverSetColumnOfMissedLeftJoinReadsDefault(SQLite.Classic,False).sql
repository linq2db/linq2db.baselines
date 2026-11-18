-- SQLite.Classic SQLite
SELECT
	[x_1].[Id],
	[x_1].[V],
	Coalesce([x_1].[V], 0) + 1
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
	) [x_1]

