﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[p].[Value1],
	[c_1].[ChildID],
	[p].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

