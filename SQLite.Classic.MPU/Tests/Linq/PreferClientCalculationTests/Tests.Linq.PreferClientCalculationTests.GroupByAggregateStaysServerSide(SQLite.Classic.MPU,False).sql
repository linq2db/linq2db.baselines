-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[g_1].[Name],
	SUM([g_1].[Value1])
FROM
	[ClientCalcEntity] [g_1]
GROUP BY
	[g_1].[Name]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Name]
FROM
	[ClientCalcEntity] [t1]

