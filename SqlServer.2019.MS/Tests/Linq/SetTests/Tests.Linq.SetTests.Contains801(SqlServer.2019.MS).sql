﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[ch].[ChildID],
	[gc].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
		INNER JOIN [GrandChild] [gc] ON [ch].[ChildID] = [gc].[ChildID]
WHERE
	[ch].[ChildID] = 21 AND [gc].[GrandChildID] = 211

