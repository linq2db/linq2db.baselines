BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	CONCAT_WS(N', ', IIF([t].[NullableValue] LIKE N'%A%' ESCAPE N'~', [t].[NullableValue], NULL), IIF([t].[NotNullableValue] LIKE N'%A%' ESCAPE N'~', [t].[NotNullableValue], NULL), IIF([t].[VarcharValue] LIKE '%A%' ESCAPE N'~', [t].[VarcharValue], NULL), IIF([t].[NVarcharValue] LIKE N'%A%' ESCAPE N'~', [t].[NVarcharValue], NULL))
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

