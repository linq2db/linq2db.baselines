﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID],
	[q].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [q] ON [p].[ParentID] = [q].[ParentID]

