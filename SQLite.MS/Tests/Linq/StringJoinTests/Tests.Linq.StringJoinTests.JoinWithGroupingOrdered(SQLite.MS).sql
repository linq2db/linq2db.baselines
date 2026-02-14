-- SQLite.MS SQLite

SELECT
	[t1].[Key_1],
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t2].[NullableValue], ''), ', '), '') as [Nullable_1]
		FROM
			(
				SELECT
					[t].[NullableValue]
				FROM
					[SampleClass] [t]
				WHERE
					[t1].[Key_1] = [t].[Id]
				ORDER BY
					[t].[NotNullableValue],
					[t].[NullableValue] DESC
			) [t2]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(CASE
				WHEN [t3].[NullableValue] <> '' THEN [t3].[NullableValue]
				ELSE NULL
			END, ', '), '') as [NullableFiltered]
		FROM
			(
				SELECT
					[t_1].[NullableValue]
				FROM
					[SampleClass] [t_1]
				WHERE
					[t1].[Key_1] = [t_1].[Id]
				ORDER BY
					[t_1].[NotNullableValue],
					[t_1].[NullableValue] DESC
			) [t3]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT([t4].[NotNullableValue], ', '), '') as [NotNullable]
		FROM
			(
				SELECT
					[t_2].[NotNullableValue]
				FROM
					[SampleClass] [t_2]
				WHERE
					[t1].[Key_1] = [t_2].[Id]
				ORDER BY
					[t_2].[NotNullableValue] DESC,
					[t_2].[NullableValue] DESC
			) [t4]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t5].[NullableValue], ''), ', '), '') as [NullableDoubleOrder]
		FROM
			(
				SELECT
					[t_3].[NullableValue]
				FROM
					[SampleClass] [t_3]
				WHERE
					[t1].[Key_1] = [t_3].[Id]
				ORDER BY
					[t_3].[NotNullableValue] DESC,
					[t_3].[NullableValue] DESC
			) [t5]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT([t6].[NotNullableValue], ', '), '') as [NotNullableDoubleOrder]
		FROM
			(
				SELECT
					[t_4].[NotNullableValue]
				FROM
					[SampleClass] [t_4]
				WHERE
					[t1].[Key_1] = [t_4].[Id]
				ORDER BY
					[t_4].[NotNullableValue] DESC,
					[t_4].[NullableValue] DESC
			) [t6]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT([t7].[NotNullableValue], ', '), '') as [NotNullableeOrderedCustom]
		FROM
			(
				SELECT
					[t_5].[NotNullableValue]
				FROM
					[SampleClass] [t_5]
				WHERE
					[t1].[Key_1] = [t_5].[Id]
				ORDER BY
					CASE
						WHEN [t_5].[NullableValue] IS NULL THEN 0
						ELSE 1
					END,
					[t_5].[NotNullableValue] DESC,
					[t_5].[NullableValue]
			) [t7]
	)
FROM
	(
		SELECT DISTINCT
			[g_1].[Id] as [Key_1]
		FROM
			[SampleClass] [g_1]
	) [t1]
ORDER BY
	[t1].[Key_1]

-- SQLite.MS SQLite

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

