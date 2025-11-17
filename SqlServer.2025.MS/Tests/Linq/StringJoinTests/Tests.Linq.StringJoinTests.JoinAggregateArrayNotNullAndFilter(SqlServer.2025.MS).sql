-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	CONCAT_WS(N', ', IIF([x].[NullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NullableValue], NULL), IIF([x].[NotNullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NotNullableValue], NULL), IIF([x].[VarcharValue] LIKE '%A%' ESCAPE N'~', [x].[VarcharValue], NULL), IIF([x].[NVarcharValue] LIKE N'%A%' ESCAPE N'~', [x].[NVarcharValue], NULL))
FROM
	[SampleClass] [x]
WHERE
	LEN(CONCAT_WS(N', ', IIF([x].[NullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NullableValue], NULL), IIF([x].[NotNullableValue] LIKE N'%A%' ESCAPE N'~', [x].[NotNullableValue], NULL), IIF([x].[VarcharValue] LIKE '%A%' ESCAPE N'~', [x].[VarcharValue], NULL), IIF([x].[NVarcharValue] LIKE N'%A%' ESCAPE N'~', [x].[NVarcharValue], NULL)) + N'.') <> 1

-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

