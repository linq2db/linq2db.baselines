BeforeExecute
-- SqlCe

SELECT
	[p1].[Value1],
	NULL as [ParentID]
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[Value1],
	[p2].[ParentID]
FROM
	[Parent] [p2]

