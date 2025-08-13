BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]),
	CVar(?)
FROM
	[Parent] [p]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]),
	CVar(?)
FROM
	[Parent] [p]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

