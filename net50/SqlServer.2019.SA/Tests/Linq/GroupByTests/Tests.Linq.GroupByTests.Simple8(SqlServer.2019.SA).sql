﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

