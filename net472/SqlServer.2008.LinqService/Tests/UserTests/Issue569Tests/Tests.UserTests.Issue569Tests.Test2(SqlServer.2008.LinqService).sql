BeforeExecute
-- SqlServer.2008

SELECT
	[parent_1].[ParentID],
	[child_1].[ChildID],
	[t1].[GrandChildID]
FROM
	[Parent] [parent_1]
		CROSS JOIN [Child] [child_1]
		LEFT JOIN [GrandChild] [t1] ON [child_1].[ParentID] = [t1].[ParentID] AND [child_1].[ChildID] = [t1].[ChildID]

