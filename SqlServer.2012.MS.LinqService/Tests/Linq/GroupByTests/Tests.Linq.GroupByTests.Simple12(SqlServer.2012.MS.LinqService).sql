﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t2].[ChildID_1]
FROM
	(
		SELECT
			[t1].[ParentID] + 1 as [ParentID],
			[t1].[ChildID],
			NULL as [ChildID_1]
		FROM
			[GrandChild] [t1]
	) [t2]
GROUP BY
	[t2].[ParentID],
	[t2].[ChildID]

