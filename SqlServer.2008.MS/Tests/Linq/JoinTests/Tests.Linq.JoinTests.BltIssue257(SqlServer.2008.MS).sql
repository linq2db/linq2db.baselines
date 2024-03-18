﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[b_1].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			Convert(Date, [b].[DateTimeValue]) as [Date_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [b_1]
GROUP BY
	[b_1].[Date_1]

