-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[g_2].[GroupId],
	[g_2].[Simple_1],
	[g_2].[Projection],
	[g_2].[Filter_1],
	[g_2].[FilterProjection],
	(
		SELECT
			SUM([t1].[Distinct_1])
		FROM
			(
				SELECT DISTINCT
					[t].[DataValue] as [Distinct_1]
				FROM
					[AggregationData] [t]
				WHERE
					[g_2].[GroupId] = [t].[GroupId]
			) [t1]
	),
	(
		SELECT
			SUM([t2].[FilterDistinct1])
		FROM
			(
				SELECT DISTINCT
					[t_1].[DataValue] as [FilterDistinct1]
				FROM
					[AggregationData] [t_1]
				WHERE
					[g_2].[GroupId] = [t_1].[GroupId] AND [t_1].[DataValue] MOD 2 = 0
			) [t2]
	),
	(
		SELECT
			SUM([t3].[FilterDistinct2])
		FROM
			(
				SELECT DISTINCT
					[t_2].[DataValue] as [FilterDistinct2]
				FROM
					[AggregationData] [t_2]
				WHERE
					[g_2].[GroupId] = [t_2].[GroupId] AND [t_2].[DataValue] MOD 2 = 0
			) [t3]
	)
FROM
	(
		SELECT
			[g_1].[GroupId],
			SUM([g_1].[DataValue]) as [Simple_1],
			SUM([g_1].[DataValue]) as [Projection],
			SUM(CASE
				WHEN [g_1].[DataValue] MOD 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [Filter_1],
			SUM(CASE
				WHEN [g_1].[DataValue] MOD 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [FilterProjection]
		FROM
			[AggregationData] [g_1]
		GROUP BY
			[g_1].[GroupId]
	) [g_2]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

