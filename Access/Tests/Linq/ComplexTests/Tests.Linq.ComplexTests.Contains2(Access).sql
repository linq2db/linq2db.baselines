﻿BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	[p].[Value1],
	IIF([gc_1].[ParentID] IS NOT NULL AND [gc_1].[ChildID] IS NOT NULL AND [gc_1].[GrandChildID] IS NOT NULL, True, False),
	[gc_1].[ParentID],
	[gc_1].[ChildID],
	[gc_1].[GrandChildID]
FROM
	([Child] [ch]
		INNER JOIN [Parent] [p] ON ([ch].[ParentID] = [p].[ParentID]))
		LEFT JOIN (
			SELECT
				[gc].[ParentID],
				[gc].[ChildID],
				[gc].[GrandChildID]
			FROM
				[GrandChild] [gc]
					INNER JOIN (
						SELECT
							Max([max_1].[GrandChildID]) as [Max_1]
						FROM
							[GrandChild] [max_1]
						GROUP BY
							[max_1].[ChildID]
					) [t1] ON ([gc].[GrandChildID] = [t1].[Max_1])
		) [gc_1] ON (([p].[ParentID] = [gc_1].[ParentID]))
WHERE
	([gc_1].[ParentID] IS NULL AND [gc_1].[ChildID] IS NULL AND [gc_1].[GrandChildID] IS NULL OR ([gc_1].[GrandChildID] <> 111 OR [gc_1].[GrandChildID] IS NULL) AND ([gc_1].[GrandChildID] <> 222 OR [gc_1].[GrandChildID] IS NULL))

