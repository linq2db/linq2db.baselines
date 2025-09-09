BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
UNION
SELECT
	[p2].[ParentID],
	NULL as [Value1]
FROM
	[Parent] [p2]

