BeforeExecute
-- SqlCe

SELECT
	[c_1].[Value1],
	NULL as [c1]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	NULL as [Value1],
	[c_2].[ParentID] as [c1]
FROM
	[Child] [c_2]

