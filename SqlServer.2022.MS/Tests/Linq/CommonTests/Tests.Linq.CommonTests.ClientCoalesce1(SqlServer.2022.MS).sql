BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	Coalesce([p].[Value1], @Value1)
FROM
	[Parent] [p]

