-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Key_1],
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t2].[NullableDistinct], ''), ', '), '') as [NullableDistinct]
		FROM
			(
				SELECT DISTINCT
					[t].[NullableValue] as [NullableDistinct]
				FROM
					[SampleClass] [t]
				WHERE
					[t1].[Key_1] = [t].[Id]
			) [t2]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t3].[NullableDistinctNotNullDistinct], ''), ', '), '') as [NullableDistinctNotNullDistinct]
		FROM
			(
				SELECT DISTINCT
					[t_1].[NullableValue] as [NullableDistinctNotNullDistinct]
				FROM
					[SampleClass] [t_1]
				WHERE
					[t1].[Key_1] = [t_1].[Id] AND [t_1].[NullableValue] IS NOT NULL
			) [t3]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t4].[NullableDistinctNotNullDistinctOrdered], ''), ', '), '') as [NullableDistinctNotNullDistinctOrdered]
		FROM
			(
				SELECT DISTINCT
					[t_2].[NullableValue] as [NullableDistinctNotNullDistinctOrdered]
				FROM
					[SampleClass] [t_2]
				WHERE
					[t1].[Key_1] = [t_2].[Id] AND [t_2].[NullableValue] IS NOT NULL
				ORDER BY
					[t_2].[NullableValue] DESC
			) [t4]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT([t5].[NotNullableDistinct], ', '), '') as [NotNullableDistinct]
		FROM
			(
				SELECT DISTINCT
					[t_3].[NotNullableValue] as [NotNullableDistinct]
				FROM
					[SampleClass] [t_3]
				WHERE
					[t1].[Key_1] = [t_3].[Id]
			) [t5]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT([t6].[NotNullableDistinctOrdered], ', '), '') as [NotNullableDistinctOrdered]
		FROM
			(
				SELECT DISTINCT
					[t_4].[NotNullableValue] as [NotNullableDistinctOrdered]
				FROM
					[SampleClass] [t_4]
				WHERE
					[t1].[Key_1] = [t_4].[Id]
				ORDER BY
					[t_4].[NotNullableValue] DESC
			) [t6]
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

