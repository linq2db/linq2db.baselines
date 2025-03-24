﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

DELETE [a_GrandChildren]
FROM
	[Parent] [x]
		INNER JOIN [Child] [a_Children] ON [x].[ParentID] = [a_Children].[ParentID]
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Children].[ChildID] = [a_GrandChildren].[ChildID]
WHERE
	[x].[ParentID] IN (0, 0)

