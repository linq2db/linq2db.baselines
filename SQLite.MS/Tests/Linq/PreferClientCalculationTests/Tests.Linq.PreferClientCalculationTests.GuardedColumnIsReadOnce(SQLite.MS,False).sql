-- SQLite.MS SQLite
SELECT
	CAST([j].[Value1] AS NVarChar(11))
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

