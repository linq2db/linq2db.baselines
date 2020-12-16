BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @Value1 Int -- Int32
SET     @Value1 = 3

SELECT DISTINCT
	IIF([p].[Value1] IS NULL, [p].[ParentID], [p].[Value1]),
	@Value1
FROM
	[Parent] [p]

