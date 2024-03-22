﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[g_2].[c1],
	COUNT(*)
FROM
	(
		SELECT
			Convert(Date, CURRENT_TIMESTAMP) as [c1]
		FROM
			[Parent] [g_1]
				INNER JOIN [Child] [s] ON [g_1].[ParentID] = [s].[ParentID]
		WHERE
			[g_1].[Value1] > 0
	) [g_2]
GROUP BY
	[g_2].[c1]

