-- Access.Ace.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]),
	CVar(?)
FROM
	[Parent] [p]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

-- Access.Ace.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]),
	CVar(?)
FROM
	[Parent] [p]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

