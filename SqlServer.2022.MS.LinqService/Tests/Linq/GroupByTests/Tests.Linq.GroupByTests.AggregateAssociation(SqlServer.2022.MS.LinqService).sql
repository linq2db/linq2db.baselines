﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	SUM(Coalesce([a_Parent].[Value1], 0))
FROM
	[Child] [grp]
		LEFT JOIN [Parent] [a_Parent] ON [grp].[ParentID] = [a_Parent].[ParentID]
GROUP BY
	[grp].[ParentID]

