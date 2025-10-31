-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[ParentID],
	NULL
FROM
	[Parent] [p2]

