﻿BeforeExecute
-- SqlCe

SELECT
	[g_1].[ParentID],
	Count(*) as [Count_1]
FROM
	[Child] [g_1]
		INNER JOIN [GrandChild] [y] ON [g_1].[ParentID] = [y].[ParentID] AND [g_1].[ChildID] = [y].[ChildID]
GROUP BY
	[g_1].[ParentID]

