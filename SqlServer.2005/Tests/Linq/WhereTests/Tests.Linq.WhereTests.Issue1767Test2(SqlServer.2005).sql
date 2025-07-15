BeforeExecute
-- SqlServer.2005

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[Value1] IS NULL OR [p].[Value1] <> 1

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

