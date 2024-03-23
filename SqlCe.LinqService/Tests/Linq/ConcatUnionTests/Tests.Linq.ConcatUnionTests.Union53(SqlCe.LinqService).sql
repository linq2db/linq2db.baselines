BeforeExecute
-- SqlCe

SELECT
	[p1].[ParentID],
	NULL as [c1]
FROM
	[Parent] [p1]
UNION
SELECT
	NULL as [ParentID],
	[p2].[Value1] as [c1]
FROM
	[Parent] [p2]

