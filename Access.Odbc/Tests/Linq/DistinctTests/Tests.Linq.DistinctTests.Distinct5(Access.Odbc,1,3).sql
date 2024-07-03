BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], [p].[ParentID] MOD 2),
	CVar(?)
FROM
	[Parent] [p]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

