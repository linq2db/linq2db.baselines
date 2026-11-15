-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[GroupId],
	[t1].[Direct],
	[t1].[FromEvens],
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					[t].[DataValue] as [FromValues]
				FROM
					[AggregationData] [t]
				WHERE
					[t].[DataValue] IS NOT NULL AND [t1].[GroupId] = [t].[GroupId]
			) [t2]
	)
FROM
	(
		SELECT
			[g_1].[GroupId],
			COUNT(*) as [Direct],
			COUNT(CASE
				WHEN [g_1].[DataValue] MOD 2 = 0 THEN 1
				ELSE NULL
			END) as [FromEvens]
		FROM
			[AggregationData] [g_1]
		WHERE
			[g_1].[DataValue] IS NOT NULL
		GROUP BY
			[g_1].[GroupId]
	) [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

