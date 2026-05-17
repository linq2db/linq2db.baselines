-- SqlServer.SA.MS SqlServer.2019

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

