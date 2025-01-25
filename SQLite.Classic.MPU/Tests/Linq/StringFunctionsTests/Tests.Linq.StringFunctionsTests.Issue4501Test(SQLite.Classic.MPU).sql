BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_1].[Id],
	GROUP_CONCAT([g_1].[Value1], ', ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]

