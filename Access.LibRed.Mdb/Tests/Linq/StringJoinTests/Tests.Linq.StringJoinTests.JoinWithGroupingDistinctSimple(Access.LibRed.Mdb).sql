-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Key_1],
	CASE
		WHEN [t1].[NotNullableOrderedNoNulls] IS NULL THEN ''
		ELSE [t1].[NotNullableOrderedNoNulls]
	END,
	[t1].[NotNullableOrderedNulls]
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			STRING_AGG(DISTINCT [g_1].[NullableValue], ', ') WITHIN GROUP (ORDER BY [g_1].[NullableValue], [g_1].[Id]) as [NotNullableOrderedNoNulls],
			STRING_AGG(DISTINCT CASE
				WHEN [g_1].[NullableValue] IS NULL THEN ''
				ELSE [g_1].[NullableValue]
			END, ', ') WITHIN GROUP (ORDER BY CASE
				WHEN [g_1].[NullableValue] IS NULL THEN ''
				ELSE [g_1].[NullableValue]
			END) as [NotNullableOrderedNulls]
		FROM
			[SampleClass] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
ORDER BY
	[t1].[Key_1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

