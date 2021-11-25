BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[Parent] [parent_2]
		CROSS JOIN [Child] [child_1]
		LEFT JOIN [GrandChild] [t1] ON [child_1].[ParentID] = [t1].[ParentID] AND [child_1].[ChildID] = [t1].[ChildID]
		CROSS JOIN [Parent] [parent_1]

