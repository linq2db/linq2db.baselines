-- SqlServer.2014.MS SqlServer.2014
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	Coalesce([x].[Value1], @Value1) > 10

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[Value1]
FROM
	[Parent] [p]

