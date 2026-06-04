-- SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 3

SELECT DISTINCT TOP (@take)
	[p].[Value1]
FROM
	[Parent] [p]
ORDER BY
	[p].[Value1] DESC

-- SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

