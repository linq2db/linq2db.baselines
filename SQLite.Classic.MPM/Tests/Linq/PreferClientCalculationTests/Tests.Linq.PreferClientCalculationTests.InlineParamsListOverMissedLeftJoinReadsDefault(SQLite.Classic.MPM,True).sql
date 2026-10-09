-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[e].[Value1],
	[e].[Name],
	CAST(Coalesce([j].[Value1], 0) + 1 AS NVarChar(11)) || ',' || Coalesce([e].[Name], ''),
	Coalesce([j].[Value1], 0) || ',' || [e].[Value1],
	'<' || CAST(Coalesce([j].[Value1], 0) AS NVarChar(11)) || ',' || CAST([e].[Value1] AS NVarChar(11)) || '>'
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

