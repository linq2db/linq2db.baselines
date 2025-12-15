-- SqlServer.2022.MS SqlServer.2022

SELECT
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <= 2
ORDER BY
	[p].[ParentID]

