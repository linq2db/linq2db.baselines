BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	(
		SELECT
			[s].[ParentID],
			[s].[ChildID]
		FROM
			[Parent] [parent_1],
			(
				SELECT
					[child_1].[ParentID],
					[child_1].[ChildID],
					[parent_2].[ParentID] as [ParentID_1]
				FROM
					[Parent] [parent_2],
					[Child] [child_1]
			) [s]
	) [cross_1]
		LEFT JOIN [GrandChild] [t1] ON ([cross_1].[ParentID] = [t1].[ParentID] AND [cross_1].[ChildID] = [t1].[ChildID])

