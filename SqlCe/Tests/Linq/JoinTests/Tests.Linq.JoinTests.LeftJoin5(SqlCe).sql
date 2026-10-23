-- SqlCe
SELECT
	[ch].[ParentID],
	[ch].[ChildID],
	[p].[ParentID] as [ParentID_1],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]
WHERE
	[ch].[ParentID] IS NULL

