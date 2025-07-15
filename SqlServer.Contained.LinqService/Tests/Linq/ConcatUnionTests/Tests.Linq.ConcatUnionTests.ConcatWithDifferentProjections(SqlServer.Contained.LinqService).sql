BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p1].[ParentID],
	[p1].[ParentID],
	[p1].[Value1]
FROM
	[Parent] [p1]
UNION ALL
SELECT
	Coalesce([p2].[Value1], 0),
	NULL,
	NULL
FROM
	[Parent] [p2]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

