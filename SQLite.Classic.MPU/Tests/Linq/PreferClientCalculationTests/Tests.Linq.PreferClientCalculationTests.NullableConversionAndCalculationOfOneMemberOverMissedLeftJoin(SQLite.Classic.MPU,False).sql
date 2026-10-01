-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(strftime('%Y', [j].[Date]) AS INTEGER),
	CAST(strftime('%Y', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) AS INTEGER) + 1
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(strftime('%Y', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) AS INTEGER) + 1,
	CAST(strftime('%Y', [j].[Date]) AS INTEGER)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

