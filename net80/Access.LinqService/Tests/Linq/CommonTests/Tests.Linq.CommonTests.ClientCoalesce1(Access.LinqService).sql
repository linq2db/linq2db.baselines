BeforeExecute
-- Access AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 100

SELECT
	Iif([p].[Value1] IS NULL, @Value1, [p].[Value1])
FROM
	[Parent] [p]

