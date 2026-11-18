-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Key_1],
	CASE
		WHEN [t1].[NotNullableeOrderedNoNulls] IS NULL THEN ''
		ELSE [t1].[NotNullableeOrderedNoNulls]
	END,
	[t1].[NotNullableeOrderedNulls]
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			STRING_AGG([g_1].[NullableValue], ', ') WITHIN GROUP (ORDER BY [g_1].[NullableValue], [g_1].[Id]) as [NotNullableeOrderedNoNulls],
			STRING_AGG(CASE
				WHEN [g_1].[NullableValue] IS NULL THEN ''
				ELSE [g_1].[NullableValue]
			END, ', ') WITHIN GROUP (ORDER BY [g_1].[NullableValue]) as [NotNullableeOrderedNulls]
		FROM
			[SampleClass] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
ORDER BY
	[t1].[Key_1]

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

