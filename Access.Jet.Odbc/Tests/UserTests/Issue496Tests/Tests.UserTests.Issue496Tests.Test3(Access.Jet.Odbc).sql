-- Access.Jet.Odbc AccessODBC

SELECT
	[a_Children].[ChildID],
	[a_Children].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON ([p].[ParentID] = [a_Children].[ParentID])
WHERE
	[p].[ParentID] = 1

