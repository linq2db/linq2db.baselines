BeforeExecute
-- SqlServer.2019
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	Coalesce([p].[Value1], @Value1)
FROM
	[Parent] [p]

