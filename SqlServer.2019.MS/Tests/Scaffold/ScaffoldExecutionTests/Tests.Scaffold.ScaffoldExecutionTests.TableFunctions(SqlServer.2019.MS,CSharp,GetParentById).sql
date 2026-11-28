-- SqlServer.2019.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[GetParentByID](@id) [t1]

-- SqlServer.2019.MS SqlServer.2019
SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

