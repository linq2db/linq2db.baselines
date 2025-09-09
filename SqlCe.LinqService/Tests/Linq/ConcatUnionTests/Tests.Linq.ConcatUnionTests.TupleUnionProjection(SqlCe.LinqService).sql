BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[Value1] as [Item2],
	[x].[ParentID] as [Item1]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] > 3
UNION
SELECT
	[p2].[ParentID] as [Item2],
	[p2].[Value1] as [Item1]
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

