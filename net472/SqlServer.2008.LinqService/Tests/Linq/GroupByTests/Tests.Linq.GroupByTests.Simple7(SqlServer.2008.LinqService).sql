﻿BeforeExecute
-- SqlServer.2008

SELECT 
	[t1].[ParentID], 
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

