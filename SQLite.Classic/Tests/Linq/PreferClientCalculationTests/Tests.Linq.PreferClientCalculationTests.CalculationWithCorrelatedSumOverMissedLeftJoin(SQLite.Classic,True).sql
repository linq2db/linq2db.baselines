-- SQLite.Classic SQLite
SELECT
	[e].[Id],
	[e].[Value1],
	Coalesce((
		SELECT
			SUM([c_1].[Value1])
		FROM
			[MissedJoinEntity] [c_1]
		WHERE
			[c_1].[Id] = [j].[Id]
	), 0)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

