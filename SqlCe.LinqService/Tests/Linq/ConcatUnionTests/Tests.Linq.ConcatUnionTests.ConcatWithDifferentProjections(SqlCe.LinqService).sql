BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p1].[ParentID],
	[p1].[ParentID] as [ParentID_1],
	[p1].[Value1]
FROM
	[Parent] [p1]
UNION ALL
SELECT
	Coalesce([p2].[Value1], 0) as [ParentID],
	NULL as [ParentID_1],
	NULL as [Value1]
FROM
	[Parent] [p2]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

