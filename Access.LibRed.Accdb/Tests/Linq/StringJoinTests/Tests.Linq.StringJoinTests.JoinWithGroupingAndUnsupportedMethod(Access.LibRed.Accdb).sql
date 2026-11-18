-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t5].[Key_1],
	CASE
		WHEN [t2].[Nullable_1] IS NULL THEN ''
		ELSE [t2].[Nullable_1]
	END,
	CASE
		WHEN [t4].[NotNullable] IS NULL THEN ''
		ELSE [t4].[NotNullable]
	END
FROM
	((
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [t5]
		OUTER APPLY (
			SELECT
				STRING_AGG(CASE
					WHEN [t1].[NullableValue] IS NULL THEN ''
					ELSE [t1].[NullableValue]
				END, ', ') as [Nullable_1]
			FROM
				(
					SELECT TOP 2
						[x].[NullableValue]
					FROM
						[SampleClass] [x]
					WHERE
						[t5].[Key_1] = [x].[Id]
					ORDER BY
						[x].[NotNullableValue]
				) [t1]
		) [t2])
		OUTER APPLY (
			SELECT
				STRING_AGG([t3].[NotNullableValue], ', ') as [NotNullable]
			FROM
				(
					SELECT TOP 2
						[x_1].[NotNullableValue]
					FROM
						[SampleClass] [x_1]
					WHERE
						[t5].[Key_1] = [x_1].[Id]
					ORDER BY
						[x_1].[NotNullableValue]
				) [t3]
		) [t4]
ORDER BY
	[t5].[Key_1]

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

