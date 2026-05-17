-- SqlServer.2016.MS SqlServer.2016

SELECT
	[x].[Value1],
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] > 3
UNION ALL
SELECT
	NULL,
	NULL
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] <= 3

-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

