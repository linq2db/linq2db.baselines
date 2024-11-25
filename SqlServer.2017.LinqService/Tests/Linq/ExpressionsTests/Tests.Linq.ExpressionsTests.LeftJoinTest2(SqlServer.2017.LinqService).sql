﻿BeforeExecute
-- SqlServer.2017

SELECT
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Child] [t]
				LEFT JOIN [Parent] [i] ON [t].[ParentID] = [i].[ParentID]
		WHERE
			[t].[ChildID] = [g_1].[ChildID]
	)

