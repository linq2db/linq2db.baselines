-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[GrandChildID],
	[a_Child_1].[ParentID],
	[a_Parent_1].[Value1]
FROM
	(
		SELECT DISTINCT
			[gc].[ParentID],
			[gc].[ChildID],
			[gc].[GrandChildID],
			[a_Child].[ParentID] as [ParentID_1],
			[a_Child].[ChildID] as [ChildID_1],
			[a_Parent].[ParentID] as [ParentID_2],
			[a_Parent].[Value1]
		FROM
			[GrandChild] [gc]
				LEFT JOIN [Child] [a_Child] ON [gc].[ParentID] = [a_Child].[ParentID] AND [gc].[ChildID] = [a_Child].[ChildID]
				LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
	) [t1]
		LEFT JOIN [Child] [a_Child_1] ON [t1].[ParentID] = [a_Child_1].[ParentID] AND [t1].[ChildID] = [a_Child_1].[ChildID]
		LEFT JOIN [Parent] [a_Parent_1] ON [a_Child_1].[ParentID] = [a_Parent_1].[ParentID]
ORDER BY
	[t1].[GrandChildID]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID],
	[a_Child].[ParentID],
	[a_Child].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[GrandChild] [t1]
		LEFT JOIN [Child] [a_Child] ON [t1].[ParentID] = [a_Child].[ParentID] AND [t1].[ChildID] = [a_Child].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]

