-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1],
	NULL as [c1],
	NULL as [ParentID_1],
	NULL as [Value1_1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1
UNION ALL
SELECT
	NULL as [ParentID],
	NULL as [Value1],
	[a_Parent].[ParentID] as [c1],
	[a_Parent].[ParentID] as [ParentID_1],
	[a_Parent].[Value1] as [Value1_1]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[ch].[ParentID] = 2

