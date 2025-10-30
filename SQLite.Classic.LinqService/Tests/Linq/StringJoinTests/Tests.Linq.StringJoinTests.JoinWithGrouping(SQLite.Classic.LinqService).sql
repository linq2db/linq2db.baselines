BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[g_1].[Id],
	GROUP_CONCAT(Coalesce([g_1].[NullableValue], ''), ', '),
	GROUP_CONCAT([g_1].[NotNullableValue], ', ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

