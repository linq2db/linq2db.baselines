﻿BeforeExecute
-- SqlServer.2016

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		FULL JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

