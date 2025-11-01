-- SqlServer.2014.MS SqlServer.2014

SELECT TOP (1)
	[t].[ParentID],
	[t].[ChildID],
	[t].[GrandChildID],
	[a_Child].[ParentID],
	[a_Child].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[GrandChild] [t]
		LEFT JOIN [Child] [a_Child] ON [t].[ParentID] = [a_Child].[ParentID] AND [t].[ChildID] = [a_Child].[ChildID]
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]

