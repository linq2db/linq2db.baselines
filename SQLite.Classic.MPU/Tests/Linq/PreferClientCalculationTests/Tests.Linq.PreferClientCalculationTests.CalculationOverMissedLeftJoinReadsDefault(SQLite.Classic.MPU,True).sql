-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id],
	[j].[Value1],
	Abs(Coalesce([j].[Value1], 0) - 1),
	[j].[Date],
	[e].[Date]
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CAST(strftime('%Y', Coalesce([j].[Date], '0001-01-01 00:00:00.000')) AS INTEGER)
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

