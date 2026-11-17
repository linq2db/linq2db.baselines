-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Key_1],
	[t1].[Nullable_1],
	CASE
		WHEN [t1].[NullableFiltered] IS NULL THEN ''
		ELSE [t1].[NullableFiltered]
	END,
	[t1].[NotNullable],
	[t1].[NullableDoubleOrder],
	[t1].[NotNullableDoubleOrder],
	[t1].[NotNullableeOrderedCustom]
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			STRING_AGG(CASE
				WHEN [g_1].[NullableValue] IS NULL THEN ''
				ELSE [g_1].[NullableValue]
			END, ', ') WITHIN GROUP (ORDER BY [g_1].[NotNullableValue], [g_1].[NullableValue] DESC) as [Nullable_1],
			STRING_AGG(CASE
				WHEN [g_1].[NullableValue] <> '' THEN [g_1].[NullableValue]
				ELSE NULL
			END, ', ') WITHIN GROUP (ORDER BY [g_1].[NotNullableValue], [g_1].[NullableValue] DESC) as [NullableFiltered],
			STRING_AGG([g_1].[NotNullableValue], ', ') WITHIN GROUP (ORDER BY [g_1].[NotNullableValue] DESC, [g_1].[NullableValue] DESC) as [NotNullable],
			STRING_AGG(CASE
				WHEN [g_1].[NullableValue] IS NULL THEN ''
				ELSE [g_1].[NullableValue]
			END, ', ') WITHIN GROUP (ORDER BY [g_1].[NotNullableValue] DESC) as [NullableDoubleOrder],
			STRING_AGG([g_1].[NotNullableValue], ', ') WITHIN GROUP (ORDER BY [g_1].[NotNullableValue] DESC) as [NotNullableDoubleOrder],
			STRING_AGG([g_1].[NotNullableValue], ', ') WITHIN GROUP (ORDER BY CASE
				WHEN [g_1].[NullableValue] IS NULL THEN 0
				ELSE 1
			END, [g_1].[NotNullableValue] DESC, [g_1].[NullableValue]) as [NotNullableeOrderedCustom]
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

