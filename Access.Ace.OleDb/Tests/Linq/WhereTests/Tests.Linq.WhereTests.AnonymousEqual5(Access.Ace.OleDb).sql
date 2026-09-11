-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID AND [p].[Value1] = @Value1

