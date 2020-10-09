BeforeExecute
-- SqlCe
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID]),
	@Value1_1
FROM
	[Parent] [p]

