-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CONCAT_WS(', ', [t].[NullableValue], [t].[NotNullableValue], [t].[VarcharValue], [t].[NVarcharValue]),
	CASE
		WHEN [t2].[NotNullDistinctValue] IS NULL THEN ''
		ELSE [t2].[NotNullDistinctValue]
	END
FROM
	[SampleClass] [t]
		OUTER APPLY (
			SELECT
				STRING_AGG(DISTINCT [t1].[item], ', ') WITHIN GROUP (ORDER BY [t1].[item]) as [NotNullDistinctValue]
			FROM
				(VALUES
					([t].[NullableValue]), ([t].[NotNullableValue]),
					([t].[VarcharValue]), ([t].[NVarcharValue])
				) [t1]([item])
		) [t2]

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

