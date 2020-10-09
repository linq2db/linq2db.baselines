BeforeExecute
-- Access AccessOleDb
DECLARE @p1 Integer -- Int32
SET     @p1 = 0
DECLARE @Value1_1 Integer -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT 
	Iif([p].[Value1] IS NULL, [p].[ParentID] + @p1, [p].[Value1]), 
	@Value1_1
FROM
	[Parent] [p]

