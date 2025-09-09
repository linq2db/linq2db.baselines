BeforeExecute
-- SqlCe (asynchronously)
DECLARE @Value1 Int -- Int32
SET     @Value1 = 100

SELECT
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	Coalesce([x].[Value1], @Value1) > 10

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[Value1]
FROM
	[Parent] [p]

