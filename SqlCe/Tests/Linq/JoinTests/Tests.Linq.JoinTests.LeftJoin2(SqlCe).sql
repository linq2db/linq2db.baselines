BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1],
	[ch].[ParentID] as [ParentID_1],
	[ch].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [ch] ON [p].[ParentID] = [ch].[ParentID]

