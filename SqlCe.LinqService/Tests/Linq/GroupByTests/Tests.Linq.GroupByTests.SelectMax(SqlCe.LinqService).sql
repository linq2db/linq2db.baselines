﻿BeforeExecute
-- SqlCe (asynchronously)

SELECT
	MAX([g_1].[ChildID]) as [MAX_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

