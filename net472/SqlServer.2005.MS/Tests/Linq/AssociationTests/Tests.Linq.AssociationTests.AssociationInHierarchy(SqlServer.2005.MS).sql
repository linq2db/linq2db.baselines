﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[o].[ParentID],
	[o].[Value1]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [o] ON [ch].[ParentID] = [o].[ParentID] AND [ch].[ChildID] = 1

