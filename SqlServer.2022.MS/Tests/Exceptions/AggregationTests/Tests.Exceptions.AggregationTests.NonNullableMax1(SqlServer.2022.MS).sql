-- SqlServer.2022.MS SqlServer.2022

SELECT
	MAX([t1].[ParentID])
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] < 0

