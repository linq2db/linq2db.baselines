-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID])
WHERE
	[p].[Value1] = 1

