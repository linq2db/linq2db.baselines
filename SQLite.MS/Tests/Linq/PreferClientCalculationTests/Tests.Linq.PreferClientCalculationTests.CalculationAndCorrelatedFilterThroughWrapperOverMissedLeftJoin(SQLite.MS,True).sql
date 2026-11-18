-- SQLite.MS SQLite
SELECT
	[y].[Value1],
	(
		SELECT
			COUNT(*)
		FROM
			[KeyedEntity] [k_1]
		WHERE
			[k_1].[Id] = [y].[X]
	)
FROM
	(
		SELECT
			[e].[Id],
			[j].[Value1],
			[j].[Value1] + 1 as [X]
		FROM
			[PartialJoinEntity] [e]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
	) [y]
ORDER BY
	[y].[Id]

-- SQLite.MS SQLite
SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[KeyedEntity] [k_1]
		WHERE
			[k_1].[Id] = [y].[X]
	),
	[y].[Value1]
FROM
	(
		SELECT
			[e].[Id],
			[j].[Value1] + 1 as [X],
			[j].[Value1]
		FROM
			[PartialJoinEntity] [e]
				LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
	) [y]
ORDER BY
	[y].[Id]

