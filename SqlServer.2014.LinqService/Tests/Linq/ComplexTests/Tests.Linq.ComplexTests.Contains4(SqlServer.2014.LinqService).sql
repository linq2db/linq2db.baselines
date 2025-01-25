BeforeExecute
-- SqlServer.2014

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1],
	[gc].[ParentID],
	[gc].[ChildID],
	[gc].[GrandChildID]
FROM
	[Child] [t2]
		LEFT JOIN [Parent] [a_Parent] ON [t2].[ParentID] = [a_Parent].[ParentID]
		LEFT JOIN [GrandChild] [gc]
			INNER JOIN (
				SELECT
					MAX([max_1].[GrandChildID]) as [MAX_1]
				FROM
					[GrandChild] [max_1]
				GROUP BY
					[max_1].[ChildID]
			) [t1] ON [gc].[GrandChildID] = [t1].[MAX_1]
		ON [a_Parent].[ParentID] = [gc].[ParentID]
WHERE
	([gc].[ParentID] IS NULL OR ([gc].[GrandChildID] NOT IN (111, 222) OR [gc].[GrandChildID] IS NULL))

