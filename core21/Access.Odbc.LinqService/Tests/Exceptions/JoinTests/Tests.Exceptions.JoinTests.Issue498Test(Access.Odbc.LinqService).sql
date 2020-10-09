BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON ([x].[ParentID] = [y].[ParentID])

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[x].[ParentID]
FROM
	[Parent] [x]
		INNER JOIN [Child] [y] ON ([x].[ParentID] = [y].[ParentID])
GROUP BY
	[x].[ParentID]

