-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[j].[Value1],
	[j].[Key],
	CASE
		WHEN [j].[Value1] >= 5 OR [j].[Value1] IS NULL THEN [j].[Value1]
		ELSE 5
	END,
	CASE
		WHEN [j].[Value1] <= -5 OR [j].[Value1] IS NULL THEN [j].[Value1]
		ELSE -5
	END,
	[j].[Date],
	[e].[Value1],
	Coalesce(CAST([j].[Value1] AS NVarChar(11)), '') || '!'
FROM
	[MissedJoinEntity] [e]
		LEFT JOIN [MissedJoinEntity] [j] ON [j].[Id] = [e].[Id] + 1000

