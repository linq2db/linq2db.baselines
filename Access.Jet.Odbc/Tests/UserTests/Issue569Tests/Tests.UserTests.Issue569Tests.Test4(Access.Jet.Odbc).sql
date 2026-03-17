-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[child_1].[ParentID],
			[child_1].[ChildID]
		FROM
			[Parent] [t1],
			[Parent] [s],
			[Child] [child_1]
	) [cross_1]
		LEFT JOIN [GrandChild] [grandChild_1] ON ([cross_1].[ParentID] = [grandChild_1].[ParentID] AND [cross_1].[ChildID] = [grandChild_1].[ChildID])

