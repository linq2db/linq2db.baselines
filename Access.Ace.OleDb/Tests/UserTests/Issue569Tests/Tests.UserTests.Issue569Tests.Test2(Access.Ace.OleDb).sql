-- Access.Ace.OleDb AccessOleDb

SELECT
	[cross_1].[ParentID_1],
	[cross_1].[ChildID],
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
	) [cross_1]
		LEFT JOIN [GrandChild] [grandChild_1] ON ([cross_1].[ParentID] = [grandChild_1].[ParentID] AND [cross_1].[ChildID] = [grandChild_1].[ChildID])

