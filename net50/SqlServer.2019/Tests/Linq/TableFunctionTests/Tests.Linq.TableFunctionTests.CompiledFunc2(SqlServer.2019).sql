BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @p1 Int -- Int32
SET     @p1 = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Child] [c_1],
	[GetParentByID](@p1) [p]

