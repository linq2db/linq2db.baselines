-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[g_2].[Key_1],
	[g_2].[Simple_1],
	[g_2].[Projection],
	[g_2].[Filter_1],
	[g_2].[FilterProjection],
	(
		SELECT
			AVG([t1].[Distinct_1])
		FROM
			(
				SELECT DISTINCT
					[t].[DataValue] as [Distinct_1]
				FROM
					[AggregationData] [t]
				WHERE
					[t].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t].[GroupId]
			) [t1]
	),
	(
		SELECT
			AVG([t2].[FilterDistinct1])
		FROM
			(
				SELECT DISTINCT
					[t_1].[DataValue] as [FilterDistinct1]
				FROM
					[AggregationData] [t_1]
				WHERE
					[t_1].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t_1].[GroupId] AND
					[t_1].[DataValue] MOD 2 = 0
			) [t2]
	),
	(
		SELECT
			AVG([t3].[FilterDistinct2])
		FROM
			(
				SELECT DISTINCT
					[t_2].[DataValue] as [FilterDistinct2]
				FROM
					[AggregationData] [t_2]
				WHERE
					[t_2].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t_2].[GroupId] AND
					[t_2].[DataValue] MOD 2 = 0
			) [t3]
	)
FROM
	(
		SELECT
			[g_1].[GroupId] as [Key_1],
			AVG([g_1].[DataValue]) as [Simple_1],
			AVG([g_1].[DataValue]) as [Projection],
			AVG(CASE
				WHEN [g_1].[DataValue] MOD 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [Filter_1],
			AVG(CASE
				WHEN [g_1].[DataValue] MOD 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [FilterProjection]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [g_2]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

