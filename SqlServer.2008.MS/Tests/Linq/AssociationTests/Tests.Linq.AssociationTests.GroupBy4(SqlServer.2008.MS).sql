﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			DatePart(year, [selectParam].[DateTimeValue]) as [Key_1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

