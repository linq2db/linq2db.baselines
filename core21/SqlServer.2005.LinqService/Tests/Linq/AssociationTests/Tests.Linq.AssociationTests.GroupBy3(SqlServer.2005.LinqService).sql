﻿BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			DatePart(year, [a_Types].[DateTimeValue]) as [c1]
		FROM
			[Parent] [selectParam]
				LEFT JOIN [LinqDataTypes] [a_Types] ON [selectParam].[ParentID] = [a_Types].[ID]
	) [t1]
GROUP BY
	[t1].[c1]

