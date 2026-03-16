-- Access.Ace.Odbc AccessODBC

SELECT
	(
		SELECT TOP 1
			[a_Children].[ChildID]
		FROM
			[Child] [a_Children]
		WHERE
			[employee].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [employee]
		LEFT JOIN [GrandChild] [names_1] ON ([employee].[ParentID] = [names_1].[ParentID])

