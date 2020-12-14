BeforeExecute
-- Access AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 0
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	Iif([p].[Value1] IS NULL, [p].[ParentID] + @ParentID, [p].[Value1]),
	@Value1
FROM
	[Parent] [p]

