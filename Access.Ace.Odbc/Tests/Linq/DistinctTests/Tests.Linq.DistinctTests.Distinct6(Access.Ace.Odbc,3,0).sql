-- Access.Ace.Odbc AccessODBC
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] + ?, [p].[Value1]),
	CVar(?)
FROM
	[Parent] [p]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

