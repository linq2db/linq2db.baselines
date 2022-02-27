BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 300000
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1
ORDER BY
	1
OFFSET @n ROWS FETCH NEXT @take ROWS ONLY 

