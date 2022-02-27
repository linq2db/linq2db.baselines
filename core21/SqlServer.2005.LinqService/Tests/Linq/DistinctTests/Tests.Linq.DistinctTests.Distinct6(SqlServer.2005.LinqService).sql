BeforeExecute
-- SqlServer.2005
DECLARE @p1 Int -- Int32
SET     @p1 = 0
DECLARE @Value1_1 Int -- Int32
SET     @Value1_1 = 3

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] + @p1),
	@Value1_1
FROM
	[Parent] [p]

