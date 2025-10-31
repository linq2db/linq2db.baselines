BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

