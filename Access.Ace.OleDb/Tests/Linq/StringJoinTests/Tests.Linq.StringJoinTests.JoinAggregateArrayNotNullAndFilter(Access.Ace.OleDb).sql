-- Access.Ace.OleDb AccessOleDb

SELECT
	Mid(IIF((', ' + IIF([x].[NullableValue] LIKE '%A%', [x].[NullableValue], NULL)) IS NULL, '', ', ' + IIF([x].[NullableValue] LIKE '%A%', [x].[NullableValue], NULL)) + IIF((', ' + IIF([x].[NotNullableValue] LIKE '%A%', [x].[NotNullableValue], NULL)) IS NULL, '', ', ' + IIF([x].[NotNullableValue] LIKE '%A%', [x].[NotNullableValue], NULL)) + IIF((', ' + IIF([x].[VarcharValue] LIKE '%A%', [x].[VarcharValue], NULL)) IS NULL, '', ', ' + IIF([x].[VarcharValue] LIKE '%A%', [x].[VarcharValue], NULL)) + IIF((', ' + IIF([x].[NVarcharValue] LIKE '%A%', [x].[NVarcharValue], NULL)) IS NULL, '', ', ' + IIF([x].[NVarcharValue] LIKE '%A%', [x].[NVarcharValue], NULL)), 3)
FROM
	[SampleClass] [x]
WHERE
	Len(Mid(IIF((', ' + IIF([x].[NullableValue] LIKE '%A%', [x].[NullableValue], NULL)) IS NULL, '', ', ' + IIF([x].[NullableValue] LIKE '%A%', [x].[NullableValue], NULL)) + IIF((', ' + IIF([x].[NotNullableValue] LIKE '%A%', [x].[NotNullableValue], NULL)) IS NULL, '', ', ' + IIF([x].[NotNullableValue] LIKE '%A%', [x].[NotNullableValue], NULL)) + IIF((', ' + IIF([x].[VarcharValue] LIKE '%A%', [x].[VarcharValue], NULL)) IS NULL, '', ', ' + IIF([x].[VarcharValue] LIKE '%A%', [x].[VarcharValue], NULL)) + IIF((', ' + IIF([x].[NVarcharValue] LIKE '%A%', [x].[NVarcharValue], NULL)) IS NULL, '', ', ' + IIF([x].[NVarcharValue] LIKE '%A%', [x].[NVarcharValue], NULL)), 3)) <> 0

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

