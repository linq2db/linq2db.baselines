﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ChildID] > 20 AND [p].[ParentID] = 3

