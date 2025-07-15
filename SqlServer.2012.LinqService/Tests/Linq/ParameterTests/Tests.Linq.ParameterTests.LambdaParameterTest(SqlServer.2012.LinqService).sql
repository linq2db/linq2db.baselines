BeforeExecute
-- SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[r].[ParentID],
	[r].[Value1]
FROM
	[Parent] [r]
WHERE
	[r].[ParentID] = @p

BeforeExecute
-- SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

