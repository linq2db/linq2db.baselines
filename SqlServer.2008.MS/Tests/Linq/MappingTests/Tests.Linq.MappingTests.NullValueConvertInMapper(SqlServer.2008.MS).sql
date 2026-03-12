-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <= 2
ORDER BY
	[p].[ParentID]

