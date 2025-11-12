-- SqlServer.2025 SqlServer.2022
DECLARE @separator NVarChar(4000) -- String
SET     @separator = N', '

SELECT
	[g_1].[Id],
	Coalesce(STRING_AGG(Coalesce([g_1].[NullableValue], N''), @separator), N''),
	Coalesce(STRING_AGG([g_1].[NotNullableValue], @separator), N'')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

