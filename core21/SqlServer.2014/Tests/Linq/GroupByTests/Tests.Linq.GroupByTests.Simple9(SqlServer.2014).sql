﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

