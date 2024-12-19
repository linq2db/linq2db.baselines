BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND [p].[Value1] = @p_1

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p AND [p].[Value1] IS NULL

