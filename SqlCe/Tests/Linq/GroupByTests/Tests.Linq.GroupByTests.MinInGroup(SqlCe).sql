-- SqlCe

SELECT
	[g_2].[GroupId],
	[g_2].[MIN_1],
	[g_2].[MIN_2],
	[g_2].[MIN_3],
	[g_2].[MIN_4],
	[t2].[MIN_1] as [MIN_5],
	[t4].[MIN_1] as [MIN_6],
	[t6].[MIN_1] as [MIN_7]
FROM
	(
		SELECT
			[g_1].[GroupId],
			MIN([g_1].[DataValue]) as [MIN_1],
			MIN([g_1].[DataValue]) as [MIN_2],
			MIN(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [MIN_3],
			MIN(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [MIN_4]
		FROM
			[AggregationData] [g_1]
		GROUP BY
			[g_1].[GroupId]
	) [g_2]
		OUTER APPLY (
			SELECT
				MIN([t1].[DataValue]) as [MIN_1]
			FROM
				(
					SELECT DISTINCT
						[t].[DataValue]
					FROM
						[AggregationData] [t]
					WHERE
						[g_2].[GroupId] = [t].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				MIN([t3].[DataValue]) as [MIN_1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue]
					FROM
						[AggregationData] [t_1]
					WHERE
						[g_2].[GroupId] = [t_1].[GroupId] AND CAST([t_1].[DataValue] AS Int) % 2 = 0
				) [t3]
		) [t4]
		OUTER APPLY (
			SELECT
				MIN([t5].[DataValue]) as [MIN_1]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue]
					FROM
						[AggregationData] [t_2]
					WHERE
						[g_2].[GroupId] = [t_2].[GroupId] AND CAST([t_2].[DataValue] AS Int) % 2 = 0
				) [t5]
		) [t6]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

