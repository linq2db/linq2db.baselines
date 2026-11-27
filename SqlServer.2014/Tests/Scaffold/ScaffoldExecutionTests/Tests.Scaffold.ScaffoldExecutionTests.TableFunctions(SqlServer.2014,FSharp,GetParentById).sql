-- SqlServer.2014
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[GetParentByID](1) [t1]

-- SqlServer.2014
SELECT
	COUNT(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1

