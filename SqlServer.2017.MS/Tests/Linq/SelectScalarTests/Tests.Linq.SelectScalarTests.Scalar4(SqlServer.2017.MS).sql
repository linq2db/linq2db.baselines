﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] = 3 AND [c_1].[ChildID] > 20

