-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Coalesce(GROUP_CONCAT(CASE
		WHEN [t2].[NullableValue] IN ('A', 'B') THEN [t2].[NullableValue]
		ELSE NULL
	END, ', '), '')
FROM
	(
		SELECT
			[t1].[NullableValue]
		FROM
			[SampleClass] [t1]
		ORDER BY
			[t1].[NotNullableValue]
	) [t2]

