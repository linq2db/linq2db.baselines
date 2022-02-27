BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @p1 Int -- Int32
SET     @p1 = 0
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Iif([p].[Value1] IS NULL, [p].[ParentID] + ?, [p].[Value1]),
	CVar(?)
FROM
	[Parent] [p]

