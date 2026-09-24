-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([j].[Value1] AS NVarChar(11))
FROM
	[MissedJoinEntity] [t1]
		LEFT JOIN [MissedJoinEntity] [j] ON [t1].[Id] + 1000 = [j].[Id]

