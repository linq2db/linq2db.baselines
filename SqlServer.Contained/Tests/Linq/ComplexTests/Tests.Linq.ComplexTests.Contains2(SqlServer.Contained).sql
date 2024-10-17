BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1],
	[gc_1].[not_null],
	[gc_1].[ParentID],
	[gc_1].[ChildID],
	[gc_1].[GrandChildID],
	IIF([gc_1].[not_null] IS NOT NULL, [gc_1].[ChildID], 2147483647)
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
							MAX([max_1].[GrandChildID]) as [c1]
						FROM
							[GrandChild] [max_1]
						GROUP BY
							[max_1].[ChildID]
					) [t1] ON [gc].[GrandChildID] = [t1].[c1]
		) [gc_1] ON [p].[ParentID] = [gc_1].[ParentID]
WHERE
	[gc_1].[not_null] IS NULL OR ([gc_1].[GrandChildID] <> 111 OR [gc_1].[GrandChildID] IS NULL) AND ([gc_1].[GrandChildID] <> 222 OR [gc_1].[GrandChildID] IS NULL)

