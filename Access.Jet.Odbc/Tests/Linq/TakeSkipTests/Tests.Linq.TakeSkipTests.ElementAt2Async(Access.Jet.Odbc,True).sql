BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT TOP 4
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]

