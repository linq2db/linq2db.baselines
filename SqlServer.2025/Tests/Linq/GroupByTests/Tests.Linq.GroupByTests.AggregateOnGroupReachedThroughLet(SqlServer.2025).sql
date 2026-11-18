-- SqlServer.2025
SELECT
	[t].[GroupId],
	COUNT(*),
	COUNT(IIF(Convert(Int, [t].[DataValue]) % 2 = 0, 1, NULL)),
	COUNT(DISTINCT [t].[DataValue])
FROM
	[AggregationData] [t]
WHERE
	[t].[DataValue] IS NOT NULL
GROUP BY
	[t].[GroupId]

-- SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

