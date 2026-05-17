-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[ParentID],
	[x].[Value1]
FROM
	[Parent] [x]
WHERE
	[x].[Value1] IN (2, 3, 4)

