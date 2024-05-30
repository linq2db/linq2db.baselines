BeforeExecute
-- SqlCe

SELECT
	[p1].[Value1],
	NULL as [c1]
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[Value1],
	[p2].[ParentID] as [c1]
FROM
	[Parent] [p2]

