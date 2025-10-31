BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[x].[c1]
FROM
	(
		SELECT
			CONCAT_WS(N', ', IIF([t].[NullableValue] LIKE N'%A%' ESCAPE N'~', [t].[NullableValue], NULL), IIF([t].[NotNullableValue] LIKE N'%A%' ESCAPE N'~', [t].[NotNullableValue], NULL), IIF([t].[VarcharValue] LIKE '%A%' ESCAPE N'~', [t].[VarcharValue], NULL), IIF([t].[NVarcharValue] LIKE N'%A%' ESCAPE N'~', [t].[NVarcharValue], NULL)) as [c1]
		FROM
			[SampleClass] [t]
	) [x]
WHERE
	(TRIM(N'	
                 　' FROM [x].[c1])) <> N''

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

