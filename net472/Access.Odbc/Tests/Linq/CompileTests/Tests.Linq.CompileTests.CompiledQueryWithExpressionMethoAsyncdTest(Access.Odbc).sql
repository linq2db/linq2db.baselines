BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 1

SELECT TOP 1 
	[x].[ParentID], 
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = ?
ORDER BY
	[x].[ParentID] DESC

