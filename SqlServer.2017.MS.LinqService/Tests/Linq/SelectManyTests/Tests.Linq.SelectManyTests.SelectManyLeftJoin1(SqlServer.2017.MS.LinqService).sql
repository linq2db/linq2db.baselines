﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[Value1],
	[c_1].[ChildID],
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

