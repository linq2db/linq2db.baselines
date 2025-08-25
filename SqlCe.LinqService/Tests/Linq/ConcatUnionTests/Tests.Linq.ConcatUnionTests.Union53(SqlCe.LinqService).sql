BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p1].[ParentID],
	NULL as [Value1]
FROM
	[Parent] [p1]
UNION
SELECT
	NULL as [ParentID],
	[p2].[Value1]
FROM
	[Parent] [p2]

