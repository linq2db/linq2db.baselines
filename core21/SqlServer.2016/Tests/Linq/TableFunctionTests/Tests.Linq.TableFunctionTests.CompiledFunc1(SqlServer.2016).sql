BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[GetParentByID](@p_1) [p]

