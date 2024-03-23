BeforeExecute
-- SqlCe

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[ParentID] as [ParentID_1],
	[a_Parent].[Value1]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[ch].[ParentID] = 1
UNION ALL
SELECT
	[a_Parent_1].[ParentID],
	[a_Parent_1].[ParentID] as [ParentID_1],
	[a_Parent_1].[Value1]
FROM
	[Child] [ch_1]
		LEFT JOIN [Parent] [a_Parent_1] ON [ch_1].[ParentID] = [a_Parent_1].[ParentID]
WHERE
	[ch_1].[ParentID] = 2

