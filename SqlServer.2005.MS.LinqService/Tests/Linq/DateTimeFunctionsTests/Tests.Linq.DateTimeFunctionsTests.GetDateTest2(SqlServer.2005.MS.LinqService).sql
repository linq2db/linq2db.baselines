﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 5

SELECT TOP (@take)
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			Cast(Floor(Cast(CURRENT_TIMESTAMP as Float)) as DateTime) as [c1]
		FROM
			[Parent] [v]
				INNER JOIN [Child] [s] ON [v].[ParentID] = [s].[ParentID]
		WHERE
			[v].[Value1] > 0
	) [t1]
GROUP BY
	[t1].[c1]

