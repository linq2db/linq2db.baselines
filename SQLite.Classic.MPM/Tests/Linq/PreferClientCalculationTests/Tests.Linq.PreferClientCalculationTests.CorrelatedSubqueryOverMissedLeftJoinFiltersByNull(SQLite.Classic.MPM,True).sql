-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[CountedEntity] [c_1]
		WHERE
			[c_1].[ParentId] = [j].[Id]
	),
	[j].[Value1]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

