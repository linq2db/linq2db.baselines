﻿BeforeExecute
-- SqlCe

SELECT
	[b_1].[Date_1],
	Count(*) as [Count_1]
FROM
	(
		SELECT
			Cast(Floor(Cast([b].[DateTimeValue] as Float)) as DateTime) as [Date_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [b_1]
GROUP BY
	[b_1].[Date_1]

