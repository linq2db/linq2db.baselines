﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	[g_2].[cond],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[TradingStatus] = N'D', 1, 0) as [cond]
		FROM
			[Issue913Test] [g_1]
	) [g_2]
GROUP BY
	[g_2].[cond]

