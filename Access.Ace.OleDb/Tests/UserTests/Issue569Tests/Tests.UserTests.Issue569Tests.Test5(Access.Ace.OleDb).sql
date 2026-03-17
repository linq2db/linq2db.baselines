-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[child_1].[ParentID],
			[child_1].[ChildID]
		FROM
			[Parent] [parent_1],
			[Child] [child_1],
			[Parent] [parent_2]
	) [cross_1]
		LEFT JOIN [GrandChild] [grandChild_1] ON ([cross_1].[ParentID] = [grandChild_1].[ParentID] AND [cross_1].[ChildID] = [grandChild_1].[ChildID])

