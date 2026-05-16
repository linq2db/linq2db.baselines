-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[Value1] || [t].[Value2] || Coalesce([t].[Value3], '')
FROM
	[StringConcatThreeNullEntity] [t]
ORDER BY
	[t].[ID]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	[StringConcatThreeNullEntity] [t1]

