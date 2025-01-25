BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[ParentID],
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
							MAX([max_1].[GrandChildID]) as [c1]
						FROM
							[GrandChild] [max_1]
						GROUP BY
							[max_1].[ChildID]
					) [t1] ON ([gc].[GrandChildID] = [t1].[c1])
		) [gc_1] ON ([p].[ParentID] = [gc_1].[ParentID])
WHERE
	[gc_1].[ParentID] IS NULL OR ([gc_1].[GrandChildID] NOT IN (111, 222) OR [gc_1].[GrandChildID] IS NULL)

