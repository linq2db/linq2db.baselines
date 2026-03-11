-- SqlServer.2022
DECLARE @skip Int -- Int32
SET     @skip = 2
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

