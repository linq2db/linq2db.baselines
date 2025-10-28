BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Key_1],
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t2].[NullableValue], ''), ', '), '')
		FROM
			(
				SELECT
					[x].[NullableValue]
				FROM
					[SampleClass] [x]
				WHERE
					[t1].[Key_1] = [x].[Id]
				ORDER BY
					[x].[NotNullableValue]
				LIMIT 2
			) [t2]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT([t3].[NotNullableValue], ', '), '')
		FROM
			(
				SELECT
					[x_1].[NotNullableValue]
				FROM
					[SampleClass] [x_1]
				WHERE
					[t1].[Key_1] = [x_1].[Id]
				ORDER BY
					[x_1].[NotNullableValue]
				LIMIT 2
			) [t3]
	)
FROM
	(
		SELECT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
ORDER BY
	[t1].[Key_1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

