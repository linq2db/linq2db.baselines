﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DELETE [c_2]
FROM
	[Parent] [x]
		INNER JOIN [Child] [c_1] ON [x].[ParentID] = [c_1].[ParentID]
		INNER JOIN [GrandChild] [c_2] ON [c_1].[ChildID] = [c_2].[ChildID]
WHERE
	[x].[ParentID] IN (0, 0)

