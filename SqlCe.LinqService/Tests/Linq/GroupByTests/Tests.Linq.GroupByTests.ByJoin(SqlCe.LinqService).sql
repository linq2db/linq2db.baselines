﻿BeforeExecute
--  SqlCe

SELECT
	SUM([c2].[ChildID]) as [SUM_1]
FROM
	[Child] [g_1]
		INNER JOIN [Child] [c2] ON [g_1].[ChildID] = [c2].[ChildID] + 1
GROUP BY
	[g_1].[ParentID]

