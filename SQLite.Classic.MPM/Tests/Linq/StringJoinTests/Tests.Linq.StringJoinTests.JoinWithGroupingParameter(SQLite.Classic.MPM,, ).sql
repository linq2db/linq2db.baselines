-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @separator NVarChar(2) -- String
SET     @separator = ', '

SELECT
	[g_1].[Id],
	Coalesce(GROUP_CONCAT(Coalesce([g_1].[NullableValue], ''), @separator), ''),
	Coalesce(GROUP_CONCAT([g_1].[NotNullableValue], @separator), '')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

