BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1],
	[GetParentByID](@p_1) [p]

