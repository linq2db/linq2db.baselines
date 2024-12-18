BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
				INNER JOIN [GrandChild] [a_GrandChildren] ON ([a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_GrandChildren].[ParentID] IS NOT NULL AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID] AND [a_GrandChildren].[ChildID] IS NOT NULL)
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

