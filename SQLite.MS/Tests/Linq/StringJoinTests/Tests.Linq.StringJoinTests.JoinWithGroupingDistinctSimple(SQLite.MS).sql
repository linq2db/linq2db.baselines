-- SQLite.MS SQLite

SELECT
	[t1].[Key_1],
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t2].[NotNullableOrderedNoNulls], ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					[t].[NullableValue] as [NotNullableOrderedNoNulls]
				FROM
					[SampleClass] [t]
				WHERE
					[t1].[Key_1] = [t].[Id] AND [t].[NullableValue] IS NOT NULL
				ORDER BY
					[t].[NullableValue]
			) [t2]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT([t4].[NotNullableOrderedNulls], ', '), '')
		FROM
			(
				SELECT DISTINCT
					[t3].[NotNullableOrderedNulls]
				FROM
					(
						SELECT
							Coalesce([t_1].[NullableValue], '') as [NotNullableOrderedNulls]
						FROM
							[SampleClass] [t_1]
						WHERE
							[t1].[Key_1] = [t_1].[Id]
					) [t3]
				ORDER BY
					[t3].[NotNullableOrderedNulls]
			) [t4]
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

