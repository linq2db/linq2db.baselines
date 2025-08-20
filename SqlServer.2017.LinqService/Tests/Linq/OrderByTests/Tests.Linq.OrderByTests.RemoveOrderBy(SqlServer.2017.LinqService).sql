BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
ORDER BY
	[t1].[ParentID]

BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

