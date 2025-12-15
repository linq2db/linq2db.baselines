-- SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] > 1 AND [p].[ParentID] > 2 AND [p].[ParentID] > 3

