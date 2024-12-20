BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id1 Int -- Int32
SET     @id1 = 1
DECLARE @id2 Int -- Int32
SET     @id2 = 10000

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? OR [p].[ParentID] >= ? OR [p].[ParentID] >= ?
ORDER BY
	[p].[ParentID]

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id1 Int -- Int32
SET     @id1 = 2
DECLARE @id1 Int -- Int32
SET     @id1 = 2
DECLARE @id2 Int -- Int32
SET     @id2 = 10000

SELECT TOP 1
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? OR [p].[ParentID] >= ? OR [p].[ParentID] >= ?
ORDER BY
	[p].[ParentID]

