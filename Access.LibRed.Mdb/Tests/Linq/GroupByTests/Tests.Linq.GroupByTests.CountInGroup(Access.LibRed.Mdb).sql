-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[GroupId],
	[t1].[Simple_1],
	[t1].[WithFilter],
	[t1].[Projection],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t].[DataValue] as [Distinct_1]
				FROM
					[AggregationData] [t]
				WHERE
					[t].[DataValue] IS NOT NULL AND [t1].[GroupId] = [t].[GroupId]
			) [t2]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x].[DataValue] as [DistinctWithFilter]
				FROM
					[AggregationData] [x]
				WHERE
					[x].[DataValue] IS NOT NULL AND [t1].[GroupId] = [x].[GroupId] AND
					[x].[DataValue] MOD 2 = 0
			) [t3]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t_1].[DataValue] as [FilterDistinct]
				FROM
					[AggregationData] [t_1]
				WHERE
					[t_1].[DataValue] IS NOT NULL AND [t1].[GroupId] = [t_1].[GroupId] AND
					[t_1].[DataValue] MOD 2 = 0
			) [t4]
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[x_1].[DataValue] as [FilterDistinctWithFilter]
				FROM
					[AggregationData] [x_1]
				WHERE
					[x_1].[DataValue] IS NOT NULL AND [t1].[GroupId] = [x_1].[GroupId] AND
					[x_1].[DataValue] MOD 2 = 0
			) [t5]
	),
	[t1].[SubFilter],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t_2].[DataValue] as [SubFilterDistinct]
				FROM
					[AggregationData] [t_2]
				WHERE
					[t_2].[DataValue] IS NOT NULL AND [t1].[GroupId] = [t_2].[GroupId] AND
					[t_2].[DataValue] MOD 2 = 0
			) [t6]
	)
FROM
	(
		SELECT
			[g_1].[GroupId],
			COUNT(*) as [Simple_1],
			COUNT(CASE
				WHEN [g_1].[DataValue] MOD 2 = 0 THEN 1
				ELSE NULL
			END) as [WithFilter],
			COUNT(*) as [Projection],
			COUNT(CASE
				WHEN [g_1].[DataValue] MOD 2 = 0 THEN 1
				ELSE NULL
			END) as [SubFilter]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

