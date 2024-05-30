BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1],
	[gc_1].[not_null],
	[gc_1].[ParentID],
	[gc_1].[ChildID],
	[gc_1].[GrandChildID]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
		LEFT JOIN (
			SELECT
				[gc].[ParentID],
				[gc].[ChildID],
				[gc].[GrandChildID],
				1 as [not_null]
			FROM
				[GrandChild] [gc]
					INNER JOIN (
						SELECT
							MAX([max_1].[GrandChildID]) as [MAX_1]
						FROM
							[GrandChild] [max_1]
						GROUP BY
							[max_1].[ChildID]
					) [t1] ON [gc].[GrandChildID] = [t1].[MAX_1]
		) [gc_1] ON [p].[ParentID] = [gc_1].[ParentID]
WHERE
	([gc_1].[not_null] IS NULL OR ([gc_1].[GrandChildID] <> 111 OR [gc_1].[GrandChildID] IS NULL) AND ([gc_1].[GrandChildID] <> 222 OR [gc_1].[GrandChildID] IS NULL))

