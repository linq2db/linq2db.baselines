﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [lj1] ON [p].[ParentID] = [lj1].[ParentID]
WHERE
	[lj1].[ParentID] IS NULL AND [lj1].[ChildID] IS NULL

