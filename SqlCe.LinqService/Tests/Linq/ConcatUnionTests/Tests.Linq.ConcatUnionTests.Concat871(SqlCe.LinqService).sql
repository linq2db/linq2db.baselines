BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[c_1].[Value1],
	NULL as [ParentID]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	NULL as [Value1],
	[c_2].[ParentID]
FROM
	[Child] [c_2]

