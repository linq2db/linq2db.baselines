BeforeExecute
-- SqlServer.2017
DECLARE @ParentID_1 Int -- Int32
SET     @ParentID_1 = 0
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] + @ParentID_1, [p].[Value1]),
	@Value1_1
FROM
	[Parent] [p]

