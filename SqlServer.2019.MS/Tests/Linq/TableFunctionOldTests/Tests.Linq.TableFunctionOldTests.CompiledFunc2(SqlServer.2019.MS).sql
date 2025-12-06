-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1]
		CROSS JOIN [GetParentByID](@p) [p]

