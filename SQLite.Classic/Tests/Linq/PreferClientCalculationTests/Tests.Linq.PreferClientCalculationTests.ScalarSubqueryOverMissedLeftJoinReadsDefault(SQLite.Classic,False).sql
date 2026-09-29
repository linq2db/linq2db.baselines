-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	(
		SELECT
			Coalesce([k_1].[Value1], 0) + 1
		FROM
			[MissedJoinEntity] [t]
				LEFT JOIN [MissedJoinEntity] [k_1] ON [k_1].[Id] = [t].[Id] + 1000
		WHERE
			[t].[Id] = [e].[Id]
		LIMIT 1
	),
	Coalesce((
		SELECT
			[k_2].[Value1]
		FROM
			[MissedJoinEntity] [t_1]
				LEFT JOIN [MissedJoinEntity] [k_2] ON [k_2].[Id] = [t_1].[Id] + 1000
		WHERE
			[t_1].[Id] = [e].[Id]
		LIMIT 1
	), 0) + 1
FROM
	[MissedJoinEntity] [e]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

