-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CONCAT_WS(', ', CASE
		WHEN [t].[NullableValue] IS NULL THEN ''
		ELSE [t].[NullableValue]
	END, [t].[NotNullableValue], CASE
		WHEN [t].[VarcharValue] IS NULL THEN ''
		ELSE [t].[VarcharValue]
	END, CASE
		WHEN [t].[NVarcharValue] IS NULL THEN ''
		ELSE [t].[NVarcharValue]
	END),
	CASE
		WHEN [t2].[AggregatedNotNullFilteredDistinct] IS NULL THEN ''
		ELSE [t2].[AggregatedNotNullFilteredDistinct]
	END,
	CASE
		WHEN [t4].[AggregatedFilteredDistinct] IS NULL THEN ''
		ELSE [t4].[AggregatedFilteredDistinct]
	END
FROM
	([SampleClass] [t]
		OUTER APPLY (
			SELECT
				STRING_AGG(DISTINCT [t1].[item], ', ') WITHIN GROUP (ORDER BY [t1].[item]) as [AggregatedNotNullFilteredDistinct]
			FROM
				(VALUES
					([t].[NotNullableValue]), ([t].[NotNullableValue]),
					([t].[NotNullableValue]), ([t].[NVarcharValue])
				) [t1]([item])
		) [t2])
		OUTER APPLY (
			SELECT
				STRING_AGG(DISTINCT CASE
					WHEN [t3].[item] IS NULL THEN ''
					ELSE [t3].[item]
				END, ', ') WITHIN GROUP (ORDER BY CASE
					WHEN [t3].[item] IS NULL THEN 0
					ELSE 1
				END, [t3].[item]) as [AggregatedFilteredDistinct]
			FROM
				(VALUES
					([t].[NotNullableValue]), ([t].[NotNullableValue]),
					([t].[NotNullableValue]), ([t].[NVarcharValue])
				) [t3]([item])
			WHERE
				[t3].[item] <> 'A' OR [t3].[item] IS NULL
		) [t4]

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

