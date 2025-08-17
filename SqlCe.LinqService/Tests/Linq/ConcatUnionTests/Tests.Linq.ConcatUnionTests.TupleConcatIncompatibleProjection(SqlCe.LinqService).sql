BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[Value1] as [Item2],
	[x].[ParentID] as [Item1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] > 3
UNION ALL
SELECT
	NULL as [Item2],
	NULL as [Item1]
FROM
	[Parent] [p2]
WHERE
	[p2].[ParentID] <= 3

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

