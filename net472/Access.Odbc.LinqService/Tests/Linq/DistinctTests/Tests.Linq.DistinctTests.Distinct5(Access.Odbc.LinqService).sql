BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT 
	Iif([p].[Value1] IS NULL, [p].[ParentID] MOD 2, [p].[Value1]), 
	CVar(?)
FROM
	[Parent] [p]

