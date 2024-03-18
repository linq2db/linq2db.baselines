﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	[gc].[ParentID],
	[gc].[ChildID],
	[gc].[GrandChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
		LEFT JOIN [GrandChild] [gc]
			INNER JOIN (
				SELECT
					MAX([max_1].[GrandChildID]) as [MAX_1]
				FROM
					[GrandChild] [max_1]
				GROUP BY
					[max_1].[ChildID]
			) [t1] ON [gc].[GrandChildID] = [t1].[MAX_1]
		ON [p].[ParentID] = [gc].[ParentID]
WHERE
	([gc].[ParentID] IS NULL OR ([gc].[GrandChildID] NOT IN (111, 222) OR [gc].[GrandChildID] IS NULL))

