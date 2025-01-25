BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[GetParentByID](@p) [p]

