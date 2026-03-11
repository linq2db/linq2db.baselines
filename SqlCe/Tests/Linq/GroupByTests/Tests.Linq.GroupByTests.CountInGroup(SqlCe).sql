-- SqlCe

SELECT
	[t11].[GroupId],
	[t11].[Simple_1],
	[t11].[WithFilter],
	[t11].[Projection],
	[t2].[Distinct_1],
	[t4].[DistinctWithFilter],
	[t6].[FilterDistinct],
	[t8].[FilterDistinctWithFilter],
	[t11].[SubFilter],
	[t10].[SubFilterDistinct]
FROM
	(
		SELECT
			[t].[GroupId],
			COUNT(*) as [Simple_1],
			COUNT(CASE
				WHEN CAST([t].[DataValue] AS Int) % 2 = 0 THEN 1
				ELSE NULL
			END) as [WithFilter],
			COUNT(*) as [Projection],
			COUNT(CASE
				WHEN CAST([t].[DataValue] AS Int) % 2 = 0 THEN 1
				ELSE NULL
			END) as [SubFilter]
		FROM
			[AggregationData] [t]
		WHERE
			[t].[DataValue] IS NOT NULL
		GROUP BY
			[t].[GroupId]
	) [t11]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Distinct_1]
			FROM
				(
					SELECT DISTINCT
						[t_1].[DataValue] as [Distinct_1]
					FROM
						[AggregationData] [t_1]
					WHERE
						[t_1].[DataValue] IS NOT NULL AND [t11].[GroupId] = [t_1].[GroupId]
				) [t1]
		) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [DistinctWithFilter]
			FROM
				(
					SELECT DISTINCT
						[x].[DataValue] as [DistinctWithFilter]
					FROM
						[AggregationData] [x]
					WHERE
						[x].[DataValue] IS NOT NULL AND [t11].[GroupId] = [x].[GroupId] AND
						CAST([x].[DataValue] AS Int) % 2 = 0
				) [t3]
		) [t4]
		OUTER APPLY (
			SELECT
				COUNT(*) as [FilterDistinct]
			FROM
				(
					SELECT DISTINCT
						[t_2].[DataValue] as [FilterDistinct]
					FROM
						[AggregationData] [t_2]
					WHERE
						[t_2].[DataValue] IS NOT NULL AND [t11].[GroupId] = [t_2].[GroupId] AND
						CAST([t_2].[DataValue] AS Int) % 2 = 0
				) [t5]
		) [t6]
		OUTER APPLY (
			SELECT
				COUNT(*) as [FilterDistinctWithFilter]
			FROM
				(
					SELECT DISTINCT
						[x_1].[DataValue] as [FilterDistinctWithFilter]
					FROM
						[AggregationData] [x_1]
					WHERE
						[x_1].[DataValue] IS NOT NULL AND [t11].[GroupId] = [x_1].[GroupId] AND
						CAST([x_1].[DataValue] AS Int) % 2 = 0
				) [t7]
		) [t8]
		OUTER APPLY (
			SELECT
				COUNT(*) as [SubFilterDistinct]
			FROM
				(
					SELECT DISTINCT
						[t_3].[DataValue] as [SubFilterDistinct]
					FROM
						[AggregationData] [t_3]
					WHERE
						[t_3].[DataValue] IS NOT NULL AND [t11].[GroupId] = [t_3].[GroupId] AND
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

