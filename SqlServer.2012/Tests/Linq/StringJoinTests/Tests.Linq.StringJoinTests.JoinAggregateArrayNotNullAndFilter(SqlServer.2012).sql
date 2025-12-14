-- SqlServer.2012

SELECT
	SUBSTRING(Coalesce(N', ' + IIF([x].[NullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NullableValue], NULL), N'') + Coalesce(N', ' + IIF([x].[NotNullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NotNullableValue], NULL), N'') + Coalesce(N', ' + IIF([x].[VarcharValue] LIKE '%A%' ESCAPE N'~', [x].[VarcharValue], NULL), N'') + Coalesce(N', ' + IIF([x].[NVarcharValue] LIKE N'%A%' ESCAPE N'~', [x].[NVarcharValue], NULL), N''), 3, 2147483647)
FROM
	[SampleClass] [x]
WHERE
	LEN(SUBSTRING(Coalesce(N', ' + IIF([x].[NullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NullableValue], NULL), N'') + Coalesce(N', ' + IIF([x].[NotNullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NotNullableValue], NULL), N'') + Coalesce(N', ' + IIF([x].[VarcharValue] LIKE '%A%' ESCAPE N'~', [x].[VarcharValue], NULL), N'') + Coalesce(N', ' + IIF([x].[NVarcharValue] LIKE N'%A%' ESCAPE N'~', [x].[NVarcharValue], NULL), N''), 3, 2147483647) + N'.') <> 1

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

