-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[x].[c1]
FROM
	(
		SELECT
			SUBSTR(Coalesce(', ' || CASE
				WHEN [t].[NullableValue] LIKE '%A%' ESCAPE '~' THEN [t].[NullableValue]
				ELSE NULL
			END, '') || Coalesce(', ' || CASE
				WHEN [t].[NotNullableValue] LIKE '%A%' ESCAPE '~' THEN [t].[NotNullableValue]
				ELSE NULL
			END, '') || Coalesce(', ' || CASE
				WHEN [t].[VarcharValue] LIKE '%A%' ESCAPE '~' THEN [t].[VarcharValue]
				ELSE NULL
			END, '') || Coalesce(', ' || CASE
				WHEN [t].[NVarcharValue] LIKE '%A%' ESCAPE '~' THEN [t].[NVarcharValue]
				ELSE NULL
			END, ''), 3) as [c1]
		FROM
			[SampleClass] [t]
	) [x]
WHERE
	LTRIM([x].[c1], '	
                 　') <> ''

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

