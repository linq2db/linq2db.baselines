BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 0
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT 
	IIF([p].[Value1] IS NULL, [p].[ParentID] + @p1, [p].[Value1]), 
	@Value1_1
FROM
	[Parent] [p]

