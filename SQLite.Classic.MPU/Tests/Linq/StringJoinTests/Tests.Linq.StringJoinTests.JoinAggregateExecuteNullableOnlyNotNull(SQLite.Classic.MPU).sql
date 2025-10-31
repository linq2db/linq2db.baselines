BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Coalesce(GROUP_CONCAT([t2].[NullableValue], ', '), '')
FROM
	(
		SELECT
			[t1].[NullableValue]
		FROM
			[SampleClass] [t1]
		ORDER BY
			[t1].[NotNullableValue]
	) [t2]

