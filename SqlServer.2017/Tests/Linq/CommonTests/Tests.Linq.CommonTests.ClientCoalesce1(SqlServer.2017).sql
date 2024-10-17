BeforeExecute
-- SqlServer.2017
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	Coalesce([x].[Value1], @Value1) > 10

BeforeExecute
-- SqlServer.2017

SELECT
	[p].[Value1]
FROM
	[Parent] [p]

