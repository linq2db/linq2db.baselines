-- SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 2

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
WHERE
	CAST([p].[ParentID] AS BigInt) = @id

