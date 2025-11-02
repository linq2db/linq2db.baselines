-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[GrandChild] [t1]
WHERE
	EXISTS(
		SELECT
			[a_GrandChildren].[ChildID]
		FROM
			([Parent] [x]
				INNER JOIN [Child] [a_Children] ON ([x].[ParentID] = [a_Children].[ParentID]))
				INNER JOIN [GrandChild] [a_GrandChildren] ON ([a_Children].[ChildID] = [a_GrandChildren].[ChildID])
		WHERE
			[x].[ParentID] IN (0, 0) AND [t1].[ChildID] = [a_GrandChildren].[ChildID]
	)

