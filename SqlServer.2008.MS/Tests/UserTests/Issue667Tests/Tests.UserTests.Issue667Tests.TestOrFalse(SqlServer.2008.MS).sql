-- SqlServer.2008.MS SqlServer.2008

SELECT
	[f].[ParentID],
	[f].[Value1]
FROM
	[Parent] [f]
WHERE
	[f].[ParentID] >= 1 OR [f].[ParentID] <= 4

