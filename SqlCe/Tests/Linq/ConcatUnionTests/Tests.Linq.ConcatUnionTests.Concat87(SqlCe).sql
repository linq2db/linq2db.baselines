-- SqlCe

SELECT
	[c_1].[ParentID],
	NULL as [Value1]
FROM
	[Child] [c_1]
UNION ALL
SELECT
	NULL as [ParentID],
	[c_2].[Value1]
FROM
	[Parent] [c_2]

