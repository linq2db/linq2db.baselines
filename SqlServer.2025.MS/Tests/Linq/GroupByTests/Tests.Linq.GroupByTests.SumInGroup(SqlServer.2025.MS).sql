﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[g_1].[GroupId],
	SUM([g_1].[DataValue]),
	SUM([g_1].[DataValue]),
	SUM(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	SUM(IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	SUM(DISTINCT [g_1].[DataValue]),
	SUM(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL)),
	SUM(DISTINCT IIF((Convert(Int, [g_1].[DataValue]) % 2) = 0, [g_1].[DataValue], NULL))
FROM
	[AggregationData] [g_1]
GROUP BY
	[g_1].[GroupId]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[GroupId],
	[t1].[DataValue]
FROM
	[AggregationData] [t1]

