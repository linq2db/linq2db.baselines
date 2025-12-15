-- SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <= 2
ORDER BY
	[p].[ParentID]

