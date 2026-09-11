-- SqlCe
SELECT
	[t3].[GroupId],
	[t3].[Direct],
	[t3].[FromEvens],
	[t2].[FromValues]
FROM
	(
		SELECT
			[g_1].[GroupId],
			COUNT(*) as [Direct],
			COUNT(CASE
				WHEN CAST([g_1].[DataValue] AS Int) % 2 = 0 THEN 1
				ELSE NULL
			END) as [FromEvens]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [FromValues]
			FROM
				(
					SELECT DISTINCT
						[t].[DataValue] as [FromValues]
					FROM
						[AggregationData] [t]
					WHERE
						[t].[DataValue] IS NOT NULL AND [t3].[GroupId] = [t].[GroupId]
				) [t1]
		) [t2]

-- SqlCe
SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

