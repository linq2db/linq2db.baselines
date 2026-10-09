-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[e].[Id],
	[j].[Value1],
	[j].[Date],
	[j].[Value1]
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
SELECT DISTINCT
	[j].[Value1]
FROM
	[PartialJoinEntity] [t1]
		LEFT JOIN [PartialJoinEntity] [j] ON [j].[Id] = [t1].[Id] + 1

