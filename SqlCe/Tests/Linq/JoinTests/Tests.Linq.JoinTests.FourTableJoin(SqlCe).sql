-- SqlCe

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c1].[ChildID] as [c1Key],
	[c2].[GrandChildID] as [c2Key],
	[c3].[GrandChildID] as [c3Key]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c1] ON [p].[ParentID] = [c1].[ParentID]
		INNER JOIN [GrandChild] [c2] ON [c1].[ParentID] = [c2].[ParentID]
		INNER JOIN [GrandChild] [c3] ON [c2].[ParentID] = [c3].[ParentID]

