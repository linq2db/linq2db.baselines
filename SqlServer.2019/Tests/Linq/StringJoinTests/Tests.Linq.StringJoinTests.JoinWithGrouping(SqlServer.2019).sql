-- SqlServer.2019

SELECT
	[g_1].[Id],
	STRING_AGG(Coalesce([g_1].[NullableValue], N''), N', '),
	STRING_AGG([g_1].[NotNullableValue], N', ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

