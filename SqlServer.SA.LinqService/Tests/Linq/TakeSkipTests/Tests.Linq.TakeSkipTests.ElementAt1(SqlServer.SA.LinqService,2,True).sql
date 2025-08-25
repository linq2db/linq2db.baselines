BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	[p].[ParentID]
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

