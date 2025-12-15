-- SqlServer.2025.MS SqlServer.2025

SELECT
	[g_1].[Id],
	Coalesce(STRING_AGG(Coalesce([g_1].[NullableValue], N''), N', '), N''),
	Coalesce(STRING_AGG([g_1].[NotNullableValue], N', '), N'')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- SqlServer.2025.MS SqlServer.2025

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

