BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @Value1  -- Int32
SET     @Value1 = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? AND [p].[Value1] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ParentID  -- Int32
SET     @ParentID = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = ? AND [p].[Value1] IS NULL

