﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			DatePart(year, [g_1].[DateTimeValue]) as [Key_1]
		FROM
			[LinqDataTypes] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

