BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

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
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

