BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Parent] [t1]
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			([Parent] [x]
				INNER JOIN [Child] [c_1] ON ([x].[ParentID] = [c_1].[ParentID]))
				INNER JOIN [GrandChild] [c_2] ON ([c_1].[ChildID] = [c_2].[ChildID])
		WHERE
			[x].[ParentID] IN (0, 0) AND [t1].[ParentID] = [x].[ParentID]
	)

