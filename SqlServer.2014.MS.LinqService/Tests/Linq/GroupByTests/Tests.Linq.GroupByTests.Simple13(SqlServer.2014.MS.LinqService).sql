﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID] + 1,
	[t1].[ChildID]

