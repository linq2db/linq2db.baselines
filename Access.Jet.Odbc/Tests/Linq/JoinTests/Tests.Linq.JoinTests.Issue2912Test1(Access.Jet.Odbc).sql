-- Access.Jet.Odbc AccessODBC

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

