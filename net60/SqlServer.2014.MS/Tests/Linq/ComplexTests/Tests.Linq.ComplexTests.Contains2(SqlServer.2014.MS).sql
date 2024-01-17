BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID],
	[p].[Value1],
	[t2].[gc],
	[t2].[ChildID],
	[t2].[GrandChildID],
	[t2].[is_empty]
FROM
	[Child] [ch]
		INNER JOIN [Parent] [p] ON [ch].[ParentID] = [p].[ParentID]
		LEFT JOIN (
			SELECT
				[gc].[ParentID] as [gc],
				[gc].[ChildID],
				[gc].[GrandChildID],
				1 as [is_empty]
			FROM
				[GrandChild] [gc]
					INNER JOIN (
						SELECT
							Max([max_1].[GrandChildID]) as [c1]
						FROM
							[GrandChild] [max_1]
						GROUP BY
							[max_1].[ChildID]
					) [t1] ON ([gc].[GrandChildID] = [t1].[c1] OR [gc].[GrandChildID] IS NULL AND [t1].[c1] IS NULL)
		) [t2] ON [p].[ParentID] = [t2].[gc]
WHERE
	([t2].[gc] IS NULL AND [t2].[ChildID] IS NULL AND [t2].[GrandChildID] IS NULL OR ([t2].[GrandChildID] <> 111 OR [t2].[GrandChildID] IS NULL) AND ([t2].[GrandChildID] <> 222 OR [t2].[GrandChildID] IS NULL))

