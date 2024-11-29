BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[sub].[ParentID_1],
	[sub].[ChildID],
	[grandChild_1].[GrandChildID]
FROM
	(
		SELECT
			[child_1].[ParentID],
			[child_1].[ChildID],
			[parent_1].[ParentID] as [ParentID_1]
		FROM
			[Parent] [parent_1],
			[Child] [child_1]
	) [sub]
		LEFT JOIN [GrandChild] [grandChild_1] ON [sub].[ParentID] = [grandChild_1].[ParentID] AND [sub].[ChildID] = [grandChild_1].[ChildID]

