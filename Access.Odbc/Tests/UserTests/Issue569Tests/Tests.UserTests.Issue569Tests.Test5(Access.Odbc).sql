BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[child_1].[ParentID],
			[child_1].[ChildID]
		FROM
			[Parent] [t1],
			[Child] [child_1],
			[Parent] [parent_1]
	) [sub]
		LEFT JOIN [GrandChild] [grandChild_1] ON ([sub].[ParentID] = [grandChild_1].[ParentID] AND [sub].[ChildID] = [grandChild_1].[ChildID])

