-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? AND [p].[Value1] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? AND [p].[Value1] IS NULL

