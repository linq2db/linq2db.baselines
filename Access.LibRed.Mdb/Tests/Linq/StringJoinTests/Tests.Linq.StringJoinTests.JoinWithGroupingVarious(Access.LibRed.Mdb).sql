-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Key_1],
	[t1].[NullableDistinct],
	CASE
		WHEN [t1].[NullableDistinctNotNullDistinct] IS NULL THEN ''
		ELSE [t1].[NullableDistinctNotNullDistinct]
	END,
	CASE
		WHEN [t1].[NullableDistinctNotNullDistinctOrdered] IS NULL
			THEN ''
		ELSE [t1].[NullableDistinctNotNullDistinctOrdered]
	END,
	[t1].[NotNullableDistinct],
	[t1].[NotNullableDistinctOrdered]
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1],
			STRING_AGG(DISTINCT CASE
				WHEN [g_1].[NullableValue] IS NULL THEN ''
				ELSE [g_1].[NullableValue]
			END, ', ') as [NullableDistinct],
			STRING_AGG(DISTINCT [g_1].[NullableValue], ', ') as [NullableDistinctNotNullDistinct],
			STRING_AGG(DISTINCT [g_1].[NullableValue], ', ') WITHIN GROUP (ORDER BY [g_1].[NullableValue] DESC) as [NullableDistinctNotNullDistinctOrdered],
			STRING_AGG(DISTINCT [g_1].[NotNullableValue], ', ') as [NotNullableDistinct],
			STRING_AGG(DISTINCT [g_1].[NotNullableValue], ', ') WITHIN GROUP (ORDER BY [g_1].[NotNullableValue] DESC) as [NotNullableDistinctOrdered]
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

