BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

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
	) [sub]
		LEFT JOIN [GrandChild] [grandChild_1] ON ([sub].[ParentID] = [grandChild_1].[ParentID] AND [sub].[ChildID] = [grandChild_1].[ChildID])

