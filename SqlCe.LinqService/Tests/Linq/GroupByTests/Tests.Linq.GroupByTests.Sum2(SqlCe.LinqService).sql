﻿BeforeExecute
-- SqlCe

SELECT
	Sum([g_1].[ChildID]) as [Sum_1]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

