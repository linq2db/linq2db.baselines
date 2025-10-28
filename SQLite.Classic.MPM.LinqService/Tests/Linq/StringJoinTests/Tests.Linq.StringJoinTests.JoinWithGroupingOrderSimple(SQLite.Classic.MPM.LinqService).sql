BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Key_1],
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t2].[NullableValue], ''), ', '), '')
		FROM
			(
				SELECT
					[t].[NullableValue]
				FROM
					[SampleClass] [t]
				WHERE
					[t1].[Key_1] = [t].[Id] AND [t].[NullableValue] IS NOT NULL
				ORDER BY
					[t].[NullableValue],
					[t].[Id]
			) [t2]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t3].[NullableValue], ''), ', '), '')
		FROM
			(
				SELECT
					[t_1].[NullableValue]
				FROM
					[SampleClass] [t_1]
				WHERE
					[t1].[Key_1] = [t_1].[Id]
				ORDER BY
					[t_1].[NullableValue]
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
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

