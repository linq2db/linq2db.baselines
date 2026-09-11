-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ?

