-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Value1],
	[e].[Name],
	(
		SELECT
			MIN([t1].[item])
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					([j].[Value1]), ([e].[Value1])
				) [t1]
	),
	Coalesce([j].[Name], '') || ',' || Coalesce([e].[Name], '')
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

