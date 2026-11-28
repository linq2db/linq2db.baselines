-- SqlServer.2005.MS SqlServer.2005
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[GetParentByID](@id) [t1]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

