﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]
		CROSS JOIN [Parent] [c_1]
WHERE
	[p].[ParentID] = [g_1].[ParentID]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]
		CROSS JOIN [Parent] [c_1]
WHERE
	[p].[ParentID] = [g_1].[ParentID]

