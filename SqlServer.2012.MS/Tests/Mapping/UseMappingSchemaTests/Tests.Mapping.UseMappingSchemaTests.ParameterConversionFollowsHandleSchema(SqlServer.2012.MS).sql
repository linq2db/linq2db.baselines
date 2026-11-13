-- SqlServer.2012.MS SqlServer.2012
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	CAST([p].[ParentID] AS BigInt) = @id

