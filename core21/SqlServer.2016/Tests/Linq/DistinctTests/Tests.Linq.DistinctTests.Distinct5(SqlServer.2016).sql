BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID] % 2, [p].[Value1]),
	@Value1_1
FROM
	[Parent] [p]

