﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[t2].[ParentID],
	[t2].[ChildID],
	[t2].[GrandChildID]
FROM
	[Parent] [p]
		CROSS JOIN [Child] [t1]
		CROSS JOIN [GrandChild] [t2]

