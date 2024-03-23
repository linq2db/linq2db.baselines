BeforeExecute
-- SqlCe

SELECT
	[p1].[ParentID],
	NULL as [c1]
FROM
	[Parent] [p1]
UNION
SELECT
	[p2].[ParentID],
	[p2].[Value1] as [c1]
FROM
	[Parent] [p2]

