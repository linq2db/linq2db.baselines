﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	2,
	[ch].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [gc_1]
		INNER JOIN [Child] [ch] ON [gc_1].[ParentID] = [ch].[ParentID]
		INNER JOIN [GrandChild] [gc] ON [ch].[ChildID] = [gc].[ChildID]
WHERE
	[ch].[ChildID] = 21 AND [gc].[GrandChildID] = 211

