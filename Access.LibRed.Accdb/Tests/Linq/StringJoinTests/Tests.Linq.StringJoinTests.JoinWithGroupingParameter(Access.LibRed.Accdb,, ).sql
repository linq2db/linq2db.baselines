-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Key_1],
	CASE
		WHEN [t1].[Nullable_1] IS NULL THEN ''
		ELSE [t1].[Nullable_1]
	END,
	CASE
		WHEN [t1].[NotNullable] IS NULL THEN ''
		ELSE [t1].[NotNullable]
	END
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			STRING_AGG(CASE
				WHEN [g_1].[NullableValue] IS NULL THEN ''
				ELSE [g_1].[NullableValue]
			END, ', ') as [Nullable_1],
			STRING_AGG([g_1].[NotNullableValue], ', ') as [NotNullable]
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

