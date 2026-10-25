-- SqlServer.2014.MS SqlServer.2014
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	CAST([p].[ParentID] AS BigInt) = @id

