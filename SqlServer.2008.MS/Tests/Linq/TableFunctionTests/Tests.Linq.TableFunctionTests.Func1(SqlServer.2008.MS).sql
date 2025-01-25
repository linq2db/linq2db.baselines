BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[GetParentByID](@id) [p]

