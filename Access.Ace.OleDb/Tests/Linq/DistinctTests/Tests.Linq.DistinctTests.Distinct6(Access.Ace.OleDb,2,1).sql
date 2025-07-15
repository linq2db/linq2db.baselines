BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] + @ParentID, [p].[Value1]),
	CVar(@Value1)
FROM
	[Parent] [p]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

