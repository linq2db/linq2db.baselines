﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Sum([c2].[ChildID])
FROM
	[Child] [c1]
		INNER JOIN [Child] [c2] ON [c1].[ChildID] = [c2].[ChildID] + 1
GROUP BY
	[c1].[ParentID]

