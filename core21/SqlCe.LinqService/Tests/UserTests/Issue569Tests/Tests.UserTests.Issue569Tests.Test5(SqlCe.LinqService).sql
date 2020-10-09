BeforeExecute
-- SqlCe

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			[child_1].[ParentID], 
			[child_1].[ChildID], 
			[parent_1].[ParentID] as [ParentID_1]
		FROM
			[Parent] [parent_1],
			[Child] [child_1]
	) [s]
		CROSS JOIN [Parent] [parent_2]
		LEFT JOIN [GrandChild] [t1] ON [s].[ParentID] = [t1].[ParentID] AND [s].[ChildID] = [t1].[ChildID]

