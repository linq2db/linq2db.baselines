-- SqlServer.2017.MS SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
ORDER BY
	[t1].[Value1]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

