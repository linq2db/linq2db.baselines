-- SQLite.MS SQLite
SELECT
	AVG([j].[Value1])
FROM
	[PartialJoinEntity] [e]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1
GROUP BY
	[e].[Grp]
LIMIT 2

-- SQLite.MS SQLite
SELECT
	COUNT([j].[Value1] + 1),
	COUNT(([j].[Value1] + 1)),
	Coalesce(SUM([j].[Value1]), 0) + 1,
	Coalesce(AVG([j].[Value1]), 0) + 1
FROM
	[MissedJoinEntity] [g_1]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [g_1].[Id] + 1000
GROUP BY
	[g_1].[Id]

