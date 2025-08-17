BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [ch] ON ([p].[ParentID] = [ch].[ParentID])
WHERE
	[p].[ParentID] < 4 OR [p].[ParentID] >= 4

