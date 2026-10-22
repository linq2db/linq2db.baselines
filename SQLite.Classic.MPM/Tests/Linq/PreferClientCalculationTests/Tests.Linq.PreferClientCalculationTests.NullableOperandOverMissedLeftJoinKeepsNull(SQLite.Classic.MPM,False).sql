-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Id],
	[j].[Value1] + 1,
	CASE
		WHEN [j].[Value1] < 5 THEN 'a'
		ELSE 'b'
	END
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Date],
	[t1].[Flag],
	[t1].[Name]
FROM
	[MissedJoinEntity] [t1]

