BeforeExecute
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			[s].[ParentID], 
			[s].[ChildID]
		FROM
			( 
				SELECT 
					[child_1].[ParentID], 
					[child_1].[ChildID], 
					[parent_1].[ParentID] as [ParentID_1]
				FROM
					[Parent] [parent_1],
					[Child] [child_1]
			) [s],
			[Parent] [parent_2]
	) [cross_1]
		LEFT JOIN [GrandChild] [t1] ON ([cross_1].[ParentID] = [t1].[ParentID] AND [cross_1].[ChildID] = [t1].[ChildID])

