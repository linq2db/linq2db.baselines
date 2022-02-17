﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

SELECT
	[t1].[p],
	[t1].[p_1]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID] as [p],
			[p].[Value1] as [p_1]
		FROM
			[Parent] [p]
				INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
				INNER JOIN [GrandChild] [g_1] ON [c_1].[ChildID] = [g_1].[ChildID]
	) [t1]
ORDER BY
	[t1].[p]

