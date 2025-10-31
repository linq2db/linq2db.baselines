BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t].[GroupId],
	COUNT(*),
	COUNT(IIF((Convert(Int, [t].[DataValue]) % 2) = 0, 1, NULL)),
	COUNT(*),
	COUNT(DISTINCT [t].[DataValue]),
	COUNT(DISTINCT IIF((Convert(Int, [t].[DataValue]) % 2) = 0, [t].[DataValue], NULL)),
	COUNT(DISTINCT IIF((Convert(Int, [t].[DataValue]) % 2) = 0, [t].[DataValue], NULL)),
	COUNT(DISTINCT IIF((Convert(Int, [t].[DataValue]) % 2) = 0, [t].[DataValue], NULL)),
	COUNT(IIF((Convert(Int, [t].[DataValue]) % 2) = 0, 1, NULL)),
	COUNT(DISTINCT IIF((Convert(Int, [t].[DataValue]) % 2) = 0, [t].[DataValue], NULL)),
	COUNT(DISTINCT [t].[DataValue])
FROM
	[AggregationData] [t]
WHERE
	[t].[DataValue] IS NOT NULL
GROUP BY
	[t].[GroupId]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

