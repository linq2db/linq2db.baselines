BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1],
	[gc_1].[ParentID],
	[gc_1].[ChildID],
	[gc_1].[GrandChildID],
	IIF([gc_1].[ParentID] IS NOT NULL AND [gc_1].[ChildID] IS NOT NULL AND [gc_1].[GrandChildID] IS NOT NULL, [gc_1].[ChildID], 2147483647)
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
							MAX([max_1].[GrandChildID]) as [c1]
						FROM
							[GrandChild] [max_1]
						GROUP BY
							[max_1].[ChildID]
					) [t1] ON ([gc].[GrandChildID] = [t1].[c1])
		) [gc_1] ON ([p].[ParentID] = [gc_1].[ParentID])
WHERE
	NOT ([gc_1].[ParentID] IS NOT NULL AND [gc_1].[ChildID] IS NOT NULL AND [gc_1].[GrandChildID] IS NOT NULL) OR
	([gc_1].[GrandChildID] <> 111 OR [gc_1].[GrandChildID] IS NULL) AND ([gc_1].[GrandChildID] <> 222 OR [gc_1].[GrandChildID] IS NULL)

