-- SqlCe

SELECT
	[g_2].[Key_1],
	[g_2].[Simple_1],
	[g_2].[Projection],
	[g_2].[Filter_1],
	[g_2].[FilterProjection],
	[t2].[Distinct_1],
	[t4].[FilterDistinct1],
	[t6].[FilterDistinct2]
FROM
	(
		SELECT
			[g_1].[GroupId] as [Key_1],
			AVG([g_1].[DataValue]) as [Simple_1],
			AVG([g_1].[DataValue]) as [Projection],
			AVG(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [Filter_1],
			AVG(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [FilterProjection]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [g_2]
		OUTER APPLY (
			SELECT
				AVG([t1].[Distinct_1]) as [Distinct_1]
			FROM
				(
					SELECT DISTINCT
						[t].[DataValue] as [Distinct_1]
					FROM
						[AggregationData] [t]
					WHERE
						[t].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				AVG([t3].[FilterDistinct1]) as [FilterDistinct1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue] as [FilterDistinct1]
					FROM
						[AggregationData] [t_1]
					WHERE
						[t_1].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t_1].[GroupId] AND
						CAST([t_1].[DataValue] AS Int) % 2 = 0
				) [t3]
		) [t4]
		OUTER APPLY (
			SELECT
				AVG([t5].[FilterDistinct2]) as [FilterDistinct2]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue] as [FilterDistinct2]
					FROM
						[AggregationData] [t_2]
					WHERE
						[t_2].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t_2].[GroupId] AND
						CAST([t_2].[DataValue] AS Int) % 2 = 0
				) [t5]
		) [t6]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

