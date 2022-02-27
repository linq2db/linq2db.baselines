BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 1
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? AND [p].[Value1] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? AND [p].[Value1] IS NULL

