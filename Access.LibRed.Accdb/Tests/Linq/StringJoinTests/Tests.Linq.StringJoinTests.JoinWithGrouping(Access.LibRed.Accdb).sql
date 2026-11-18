-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_1].[Id],
	STRING_AGG(CASE
		WHEN [g_1].[NullableValue] IS NULL THEN ''
		ELSE [g_1].[NullableValue]
	END, ', '),
	STRING_AGG([g_1].[NotNullableValue], ', ')
FROM
	[SampleClass] [g_1]
GROUP BY
	[g_1].[Id]
ORDER BY
	[g_1].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

