-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Coalesce([t].[NullableValue], '') || ', ' || [t].[NotNullableValue] || ', ' || Coalesce([t].[VarcharValue], '') || ', ' || Coalesce([t].[NVarcharValue], ''),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t3].[AggregatedNotNullFilteredDistinct], ''), ', '), '')
		FROM
			(
				SELECT
					[t2].[AggregatedNotNullFilteredDistinct]
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
					) [t2]
				ORDER BY
					[t2].[AggregatedNotNullFilteredDistinct]
			) [t3]
	),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t6].[AggregatedFilteredDistinct], ''), ', '), '')
		FROM
			(
				SELECT
					[t5].[AggregatedFilteredDistinct]
				FROM
					(
						SELECT DISTINCT
							[t4].[item] as [AggregatedFilteredDistinct]
						FROM
							(
								SELECT NULL [item] WHERE 1 = 0
								UNION ALL
								VALUES
									([t].[NotNullableValue]), ([t].[NotNullableValue]),
									([t].[NotNullableValue]), ([t].[NVarcharValue])
								) [t4]
						WHERE
							[t4].[item] <> 'A' OR [t4].[item] IS NULL
					) [t5]
				ORDER BY
					CASE
						WHEN [t5].[AggregatedFilteredDistinct] IS NULL THEN 0
						ELSE 1
					END,
					[t5].[AggregatedFilteredDistinct]
			) [t6]
	)
FROM
	[SampleClass] [t]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

