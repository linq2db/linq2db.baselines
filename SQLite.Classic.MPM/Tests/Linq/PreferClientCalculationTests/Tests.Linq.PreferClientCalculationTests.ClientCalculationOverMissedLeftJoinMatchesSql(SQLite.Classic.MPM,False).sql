-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	CAST([j].[Value1] AS NVarChar(11)),
	CASE
		WHEN [j].[Key] IS NULL THEN NULL
		ELSE Lower(substr(hex([j].[Key]), 7, 2) || substr(hex([j].[Key]), 5, 2) || substr(hex([j].[Key]), 3, 2) || substr(hex([j].[Key]), 1, 2) || '-' || substr(hex([j].[Key]), 11, 2) || substr(hex([j].[Key]), 9, 2) || '-' || substr(hex([j].[Key]), 15, 2) || substr(hex([j].[Key]), 13, 2) || '-' || substr(hex([j].[Key]), 17, 4) || '-' || substr(hex([j].[Key]), 21, 12))
	END,
	CASE
		WHEN [j].[Value1] >= 5 OR [j].[Value1] IS NULL THEN [j].[Value1]
		ELSE 5
	END,
	CASE
		WHEN [j].[Value1] <= -5 OR [j].[Value1] IS NULL THEN [j].[Value1]
		ELSE -5
	END,
	strftime('%Y-%m-%d %H:%M:%f', [j].[Date], CAST([e].[Value1] AS NVarChar(11)) || ' Day'),
	Coalesce(CAST([j].[Value1] AS NVarChar(11)), '') || '!'
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

