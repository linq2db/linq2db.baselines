BeforeExecute
-- SqlCe

SELECT
	[g_2].[GroupId],
	[g_2].[MAX_1],
	[g_2].[MAX_2],
	[g_2].[MAX_3],
	[g_2].[MAX_4],
	[t2].[MAX_1] as [MAX_5],
	[t4].[MAX_1] as [MAX_6],
	[t6].[MAX_1] as [MAX_7]
FROM
	(
		SELECT
			[g_1].[GroupId],
			MAX([g_1].[DataValue]) as [MAX_1],
			MAX([g_1].[DataValue]) as [MAX_2],
			MAX(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [MAX_3],
			MAX(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [MAX_4]
		FROM
			[AggregationData] [g_1]
		GROUP BY
			[g_1].[GroupId]
	) [g_2]
		OUTER APPLY (
			SELECT
				MAX([t1].[DataValue]) as [MAX_1]
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
				MAX([t3].[DataValue]) as [MAX_1]
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
				MAX([t5].[DataValue]) as [MAX_1]
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

BeforeExecute
-- SqlCe

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

