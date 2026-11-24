-- SqlServer.2017.MS SqlServer.2017
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[GetParentByID](1) [t1]

-- SqlServer.2017.MS SqlServer.2017
SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

