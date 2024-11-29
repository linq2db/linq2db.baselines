BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	IIF([x].[Value1] IS NULL, @Value1, [x].[Value1]) > 10

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[Value1]
FROM
	[Parent] [p]

