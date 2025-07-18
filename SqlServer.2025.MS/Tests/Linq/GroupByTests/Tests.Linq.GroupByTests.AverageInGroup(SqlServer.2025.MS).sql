﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[g_1].[GroupId],
	AVG([g_1].[DataValue]),
	AVG([g_1].[DataValue]),
	AVG(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	AVG(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	AVG(DISTINCT [g_1].[DataValue]),
	AVG(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	AVG(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL))
FROM
	[AggregationData] [g_1]
WHERE
	[g_1].[DataValue] IS NOT NULL
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

