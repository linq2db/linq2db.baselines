-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Coalesce([t].[NullableValue], '') || ', ' || [t].[NotNullableValue] || ', ' || Coalesce([t].[VarcharValue], '') || ', ' || Coalesce([t].[NVarcharValue], ''),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t2].[AggregatedNotNullFilteredDistinct], ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					[t1].[item] as [AggregatedNotNullFilteredDistinct]
				FROM
					(
						SELECT NULL [item] WHERE 1 = 0
						UNION ALL
						VALUES
							([t].[NotNullableValue]), ([t].[NotNullableValue]),
							([t].[NotNullableValue]), ([t].[NVarcharValue])
						) [t1]
				WHERE
					[t1].[item] IS NOT NULL
				ORDER BY
					[t1].[item]
			) [t2]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t4].[AggregatedFilteredDistinct], ''), ', '), '')
		FROM
			(
				SELECT DISTINCT
					[t3].[item] as [AggregatedFilteredDistinct]
				FROM
					(
						SELECT NULL [item] WHERE 1 = 0
						UNION ALL
						VALUES
							([t].[NotNullableValue]), ([t].[NotNullableValue]),
							([t].[NotNullableValue]), ([t].[NVarcharValue])
						) [t3]
				WHERE
					[t3].[item] <> 'A' OR [t3].[item] IS NULL
				ORDER BY
					CASE
						WHEN [t3].[item] IS NULL THEN 0
						ELSE 1
					END,
					[t3].[item]
			) [t4]
	)
FROM
	[SampleClass] [t]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[PK],
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

