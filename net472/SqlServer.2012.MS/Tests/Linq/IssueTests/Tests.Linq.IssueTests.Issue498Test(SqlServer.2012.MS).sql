﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[x].[ParentID],
	Count(*)
FROM
	[Child] [x]
		INNER JOIN [GrandChild] [y] ON [x].[ParentID] = [y].[ParentID] AND [x].[ChildID] = [y].[ChildID]
GROUP BY
	[x].[ParentID]

