﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[Value1],
	[o].[ChildID],
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [o] ON [p].[ParentID] = [o].[ParentID]

