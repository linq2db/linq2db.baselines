-- SqlCe

SELECT
	[t11].[Key_1],
	[t11].[Count_1],
	[t11].[Count_2],
	[t11].[Count_3],
	[t2].[Count_1] as [Count_4],
	[t4].[Count_1] as [Count_5],
	[t6].[Count_1] as [Count_6],
	[t8].[Count_1] as [Count_7],
	[t11].[Count_4] as [Count_8],
	[t10].[Count_1] as [Count_9]
FROM
	(
		SELECT
			[t].[GroupId] as [Key_1],
			COUNT(*) as [Count_1],
			COUNT(CASE
				WHEN CAST([t].[DataValue] AS Int) % 2 = 0 THEN 1
				ELSE NULL
			END) as [Count_2],
			COUNT(*) as [Count_3],
			COUNT(CASE
				WHEN CAST([t].[DataValue] AS Int) % 2 = 0 THEN 1
				ELSE NULL
			END) as [Count_4]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
		GROUP BY
			[t].[GroupId]
	) [t11]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue]
					FROM
						[AggregationData] [t_1]
					WHERE
						[t_1].[DataValue] IS NOT NULL AND [t11].[Key_1] = [t_1].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[x].[DataValue]
					FROM
						[AggregationData] [x]
					WHERE
						[x].[DataValue] IS NOT NULL AND [t11].[Key_1] = [x].[GroupId] AND
						CAST([x].[DataValue] AS Int) % 2 = 0
				) [t3]
		) [t4]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue]
					FROM
						[AggregationData] [t_2]
					WHERE
						[t_2].[DataValue] IS NOT NULL AND [t11].[Key_1] = [t_2].[GroupId] AND
						CAST([t_2].[DataValue] AS Int) % 2 = 0
				) [t5]
		) [t6]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[x_1].[DataValue]
					FROM
						[AggregationData] [x_1]
					WHERE
						[x_1].[DataValue] IS NOT NULL AND [t11].[Key_1] = [x_1].[GroupId] AND
						CAST([x_1].[DataValue] AS Int) % 2 = 0
				) [t7]
		) [t8]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				(
					SELECT DISTINCT
						[t_3].[DataValue]
					FROM
						[AggregationData] [t_3]
					WHERE
						[t_3].[DataValue] IS NOT NULL AND [t11].[Key_1] = [t_3].[GroupId] AND
						CAST([t_3].[DataValue] AS Int) % 2 = 0
				) [t9]
		) [t10]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

