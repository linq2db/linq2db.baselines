﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_1].[ParentID],
	COUNT(*)
FROM
	[Child] [g_1]
		INNER JOIN [GrandChild] [y] ON [g_1].[ParentID] = [y].[ParentID] AND [g_1].[ChildID] = [y].[ChildID]
GROUP BY
	[g_1].[ParentID]

