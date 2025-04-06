BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP 1
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = ?
ORDER BY
	[x].[ParentID] DESC

