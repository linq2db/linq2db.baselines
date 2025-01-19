BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	MAX([g_1].[Value4]),
	GROUP_CONCAT([g_1].[Value4], ' -> ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id],
	[g_1].[Value4]

