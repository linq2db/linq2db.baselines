﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[r].[ChildID]
FROM
	[Parent] [p]
		RIGHT JOIN [Child] [r] ON [p].[ParentID] = [r].[ParentID]

