-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[Id],
	Coalesce(STRING_AGG(Coalesce([g_1].[NullableValue], N''), CAST(N', ' AS NVarChar(50))), N''),
	Coalesce(STRING_AGG([g_1].[NotNullableValue], CAST(N', ' AS NVarChar(50))), N'')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

