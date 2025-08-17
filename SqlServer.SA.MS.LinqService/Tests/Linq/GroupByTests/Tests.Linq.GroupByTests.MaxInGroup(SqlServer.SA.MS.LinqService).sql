BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[g_1].[GroupId],
	MAX([g_1].[DataValue]),
	MAX([g_1].[DataValue]),
	MAX(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	MAX(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	MAX(DISTINCT [g_1].[DataValue]),
	MAX(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	MAX(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL))
FROM
	[AggregationData] [g_1]
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

