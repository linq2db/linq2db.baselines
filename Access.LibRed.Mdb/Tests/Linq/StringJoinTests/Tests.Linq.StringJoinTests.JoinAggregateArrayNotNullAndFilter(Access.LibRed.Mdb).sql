-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CONCAT_WS(', ', CASE
		WHEN [x].[NullableValue] LIKE '%A%' THEN [x].[NullableValue]
		ELSE NULL
	END, CASE
		WHEN [x].[NotNullableValue] LIKE '%A%' THEN [x].[NotNullableValue]
		ELSE NULL
	END, CASE
		WHEN [x].[VarcharValue] LIKE '%A%' THEN [x].[VarcharValue]
		ELSE NULL
	END, CASE
		WHEN [x].[NVarcharValue] LIKE '%A%' THEN [x].[NVarcharValue]
		ELSE NULL
	END)
FROM
	[SampleClass] [x]
WHERE
	Len(CONCAT_WS(', ', CASE
		WHEN [x].[NullableValue] LIKE '%A%' THEN [x].[NullableValue]
		ELSE NULL
	END, CASE
		WHEN [x].[NotNullableValue] LIKE '%A%' THEN [x].[NotNullableValue]
		ELSE NULL
	END, CASE
		WHEN [x].[VarcharValue] LIKE '%A%' THEN [x].[VarcharValue]
		ELSE NULL
	END, CASE
		WHEN [x].[NVarcharValue] LIKE '%A%' THEN [x].[NVarcharValue]
		ELSE NULL
	END)) <> 0

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

