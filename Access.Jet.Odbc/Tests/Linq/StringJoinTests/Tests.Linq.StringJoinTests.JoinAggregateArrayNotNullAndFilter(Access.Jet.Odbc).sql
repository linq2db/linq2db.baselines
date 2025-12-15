-- Access.Jet.Odbc AccessODBC

SELECT
	Mid(IIF([x].[NullableValue] IS NULL OR [x].[NullableValue] NOT LIKE '%A%', '', ', ' + IIF([x].[NullableValue] LIKE '%A%', [x].[NullableValue], NULL)) + IIF([x].[NotNullableValue] NOT LIKE '%A%', '', ', ' + IIF([x].[NotNullableValue] LIKE '%A%', [x].[NotNullableValue], NULL)) + IIF([x].[VarcharValue] IS NULL OR [x].[VarcharValue] NOT LIKE '%A%', '', ', ' + IIF([x].[VarcharValue] LIKE '%A%', [x].[VarcharValue], NULL)) + IIF([x].[NVarcharValue] IS NULL OR [x].[NVarcharValue] NOT LIKE '%A%', '', ', ' + IIF([x].[NVarcharValue] LIKE '%A%', [x].[NVarcharValue], NULL)), 3)
FROM
	[SampleClass] [x]
WHERE
	Len(Mid(IIF([x].[NullableValue] IS NULL OR [x].[NullableValue] NOT LIKE '%A%', '', ', ' + IIF([x].[NullableValue] LIKE '%A%', [x].[NullableValue], NULL)) + IIF([x].[NotNullableValue] NOT LIKE '%A%', '', ', ' + IIF([x].[NotNullableValue] LIKE '%A%', [x].[NotNullableValue], NULL)) + IIF([x].[VarcharValue] IS NULL OR [x].[VarcharValue] NOT LIKE '%A%', '', ', ' + IIF([x].[VarcharValue] LIKE '%A%', [x].[VarcharValue], NULL)) + IIF([x].[NVarcharValue] IS NULL OR [x].[NVarcharValue] NOT LIKE '%A%', '', ', ' + IIF([x].[NVarcharValue] LIKE '%A%', [x].[NVarcharValue], NULL)), 3)) <> 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

