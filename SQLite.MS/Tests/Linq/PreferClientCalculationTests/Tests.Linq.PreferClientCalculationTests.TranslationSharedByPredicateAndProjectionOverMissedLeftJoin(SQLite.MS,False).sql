-- SQLite.MS SQLite
SELECT
	[e].[Id],
	CAST(strftime('%Y', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) AS INTEGER)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000
WHERE
	CAST(strftime('%Y', [j].[Date]) AS INTEGER) > 0 OR
	[e].[Id] = 1

