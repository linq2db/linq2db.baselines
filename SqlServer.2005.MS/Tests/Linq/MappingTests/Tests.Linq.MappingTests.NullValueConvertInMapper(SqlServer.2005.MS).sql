-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <= 2
ORDER BY
	[p].[ParentID]

