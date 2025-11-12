-- SQLite.MS SQLite

SELECT
	SUBSTR(Coalesce(', ' || CASE
		WHEN [x].[NullableValue] LIKE '%A%' ESCAPE '~' THEN [x].[NullableValue]
		ELSE NULL
	END, '') || Coalesce(', ' || CASE
		WHEN [x].[NotNullableValue] LIKE '%A%' ESCAPE '~' THEN [x].[NotNullableValue]
		ELSE NULL
	END, '') || Coalesce(', ' || CASE
		WHEN [x].[VarcharValue] LIKE '%A%' ESCAPE '~' THEN [x].[VarcharValue]
		ELSE NULL
	END, '') || Coalesce(', ' || CASE
		WHEN [x].[NVarcharValue] LIKE '%A%' ESCAPE '~' THEN [x].[NVarcharValue]
		ELSE NULL
	END, ''), 3)
FROM
	[SampleClass] [x]
WHERE
	Length(SUBSTR(Coalesce(', ' || CASE
		WHEN [x].[NullableValue] LIKE '%A%' ESCAPE '~' THEN [x].[NullableValue]
		ELSE NULL
	END, '') || Coalesce(', ' || CASE
		WHEN [x].[NotNullableValue] LIKE '%A%' ESCAPE '~' THEN [x].[NotNullableValue]
		ELSE NULL
	END, '') || Coalesce(', ' || CASE
		WHEN [x].[VarcharValue] LIKE '%A%' ESCAPE '~' THEN [x].[VarcharValue]
		ELSE NULL
	END, '') || Coalesce(', ' || CASE
		WHEN [x].[NVarcharValue] LIKE '%A%' ESCAPE '~' THEN [x].[NVarcharValue]
		ELSE NULL
	END, ''), 3)) <> 0

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

