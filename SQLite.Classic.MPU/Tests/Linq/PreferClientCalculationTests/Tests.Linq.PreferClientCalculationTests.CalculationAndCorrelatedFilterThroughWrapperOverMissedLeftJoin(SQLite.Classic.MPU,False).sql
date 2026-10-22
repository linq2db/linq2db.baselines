-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[y].[X] + 1,
	(
		SELECT
			COUNT(*)
		FROM
			[KeyedEntity] [k_1]
		WHERE
			[k_1].[Id] = [y].[X_1]
	)
FROM
	(
		SELECT
			[e].[Id],
			Coalesce([j].[Value1], 0) + 1 as [X],
			[j].[Value1] + 1 as [X_1]
		FROM
			[PartialJoinEntity] [e]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
	) [y]
ORDER BY
	[y].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[KeyedEntity] [k_1]
		WHERE
			[k_1].[Id] = [y].[X]
	),
	[y].[X_1] + 1
FROM
	(
		SELECT
			[e].[Id],
			[j].[Value1] + 1 as [X],
			Coalesce([j].[Value1], 0) + 1 as [X_1]
		FROM
			[PartialJoinEntity] [e]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
	) [y]
ORDER BY
	[y].[Id]

