BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	SUBSTR(Coalesce(', ' || [t].[NullableValue], '') || ', ' || [t].[NotNullableValue] || Coalesce(', ' || [t].[VarcharValue], '') || Coalesce(', ' || [t].[NVarcharValue], ''), 3),
	(
		SELECT
			Coalesce(GROUP_CONCAT(Coalesce([t3].[item_1], ''), ', '), '')
		FROM
			(
				SELECT
					[t2].[item_1]
				FROM
					(
						SELECT DISTINCT
							[t1].[item] as [item_1]
						FROM
							(
								SELECT NULL [item] WHERE 1 = 0
								UNION ALL
								VALUES
									([t].[NullableValue]), ([t].[NotNullableValue]),
									([t].[VarcharValue]), ([t].[NVarcharValue])
								) [t1]
						WHERE
							[t1].[item] IS NOT NULL
					) [t2]
				ORDER BY
					[t2].[item_1]
			) [t3]
	)
FROM
	[SampleClass] [t]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

