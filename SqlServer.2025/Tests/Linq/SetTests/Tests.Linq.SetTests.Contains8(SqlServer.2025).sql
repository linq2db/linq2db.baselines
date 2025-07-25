﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
		INNER JOIN [GrandChild] [gc] ON [ch].[ChildID] = [gc].[ChildID]
WHERE
	[gc].[ParentID] = 1 AND [gc].[ChildID] = 11 AND [gc].[GrandChildID] = 111 OR
	[gc].[ParentID] = 2 AND [gc].[ChildID] = 21 AND [gc].[GrandChildID] = 211

