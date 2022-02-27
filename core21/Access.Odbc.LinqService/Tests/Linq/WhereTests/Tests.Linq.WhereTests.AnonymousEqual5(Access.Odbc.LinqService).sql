BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 3
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	([p].[ParentID] = ? AND [p].[Value1] = ?)

