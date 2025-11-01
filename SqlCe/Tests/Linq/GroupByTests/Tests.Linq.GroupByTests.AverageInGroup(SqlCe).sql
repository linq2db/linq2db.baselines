-- SqlCe

SELECT
	[g_2].[Key_1],
	[g_2].[AVG_1],
	[g_2].[AVG_2],
	[g_2].[AVG_3],
	[g_2].[AVG_4],
	[t2].[AVG_1] as [AVG_5],
	[t4].[AVG_1] as [AVG_6],
	[t6].[AVG_1] as [AVG_7]
FROM
	(
		SELECT
			[g_1].[GroupId] as [Key_1],
			AVG([g_1].[DataValue]) as [AVG_1],
			AVG([g_1].[DataValue]) as [AVG_2],
			AVG(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [AVG_3],
			AVG(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN [g_1].[DataValue]
				ELSE NULL
			END) as [AVG_4]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [g_2]
		OUTER APPLY (
			SELECT
				AVG([t1].[DataValue]) as [AVG_1]
			FROM
				(
					SELECT DISTINCT
						[t].[DataValue]
					FROM
						[AggregationData] [t]
					WHERE
						[t].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				AVG([t3].[DataValue]) as [AVG_1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue]
					FROM
						[AggregationData] [t_1]
					WHERE
						[t_1].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t_1].[GroupId] AND
						CAST([t_1].[DataValue] AS Int) % 2 = 0
				) [t3]
		) [t4]
		OUTER APPLY (
			SELECT
				AVG([t5].[DataValue]) as [AVG_1]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue]
					FROM
						[AggregationData] [t_2]
					WHERE
						[t_2].[DataValue] IS NOT NULL AND [g_2].[Key_1] = [t_2].[GroupId] AND
						CAST([t_2].[DataValue] AS Int) % 2 = 0
				) [t5]
		) [t6]

-- SqlCe

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

