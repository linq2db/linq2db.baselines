﻿BeforeExecute
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[g_2].[Date_1],
	COUNT(*)
FROM
	(
		SELECT
			CAST(CURRENT_TIMESTAMP AS Date) as [Date_1]
		FROM
			[Parent] [g_1]
				INNER JOIN [Child] [s] ON [g_1].[ParentID] = [s].[ParentID]
		WHERE
			[g_1].[Value1] > 0
	) [g_2]
GROUP BY
	[g_2].[Date_1]

