BeforeExecute
-- Access AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NOT NULL, [p].[Value1], [p].[ParentID] + CVar(@ParentID)),
	CVar(@Value1)
FROM
	[Parent] [p]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

