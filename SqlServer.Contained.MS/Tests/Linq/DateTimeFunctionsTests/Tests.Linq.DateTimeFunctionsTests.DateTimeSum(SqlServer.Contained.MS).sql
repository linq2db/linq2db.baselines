﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[g_1].[ID],
	COUNT(*),
	SUM(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue]))),
	MAX(DateDiff(millisecond, [g_1].[DateTimeValue], DateAdd(day, 1, [g_1].[DateTimeValue])))
FROM
	[LinqDataTypes] [g_1]
GROUP BY
	[g_1].[ID]

