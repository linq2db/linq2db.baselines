BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Iif([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]),
	CVar(?)
FROM
	[Parent] [p]

