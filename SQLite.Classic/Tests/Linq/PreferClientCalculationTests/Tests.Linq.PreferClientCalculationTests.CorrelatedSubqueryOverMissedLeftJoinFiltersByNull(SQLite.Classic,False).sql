-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Alone],
	Coalesce([t1].[Value1], 0) + [t1].[Alone]
FROM
	(
		SELECT
			[e].[Id],
			(
				SELECT
					COUNT(*)
				FROM
					[CountedEntity] [c_1]
				WHERE
					[c_1].[ParentId] = [j].[Id]
			) as [Alone],
			[j].[Value1]
		FROM
			[MissedJoinEntity] [e]
				LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
	) [t1]

