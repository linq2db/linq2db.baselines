﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID],
	[ch].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[p].[ParentID] < 4 OR [p].[ParentID] >= 4

