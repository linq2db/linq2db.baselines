﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT
	[grandChild_1].[ParentID],
	[grandChild_1].[ChildID],
	[grandChild_1].[GrandChildID]
FROM
	[GrandChild] [grandChild_1]
		CROSS JOIN [Child] [child_1]
WHERE
	[grandChild_1].[ChildID] IS NOT NULL

