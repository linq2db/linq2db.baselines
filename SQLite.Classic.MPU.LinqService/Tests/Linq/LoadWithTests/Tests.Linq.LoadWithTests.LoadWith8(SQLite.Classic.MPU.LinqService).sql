BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a_GrandChildren].[ParentID],
	[a_GrandChildren].[ChildID],
	[a_GrandChildren].[GrandChildID],
	[a_Child_1].[ParentID],
	[a_Child_1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[GrandChild] [p]
		LEFT JOIN [Child] [a_Child] ON ([p].[ParentID] = [a_Child].[ParentID] OR [p].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([p].[ChildID] = [a_Child].[ChildID] OR [p].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		INNER JOIN [GrandChild] [a_GrandChildren] ON [a_Child].[ParentID] IS NOT NULL AND [a_Child].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Child].[ChildID] = [a_GrandChildren].[ChildID]
		LEFT JOIN [Child] [a_Child_1] ON ([a_GrandChildren].[ParentID] = [a_Child_1].[ParentID] OR [a_GrandChildren].[ParentID] IS NULL AND [a_Child_1].[ParentID] IS NULL) AND ([a_GrandChildren].[ChildID] = [a_Child_1].[ChildID] OR [a_GrandChildren].[ChildID] IS NULL AND [a_Child_1].[ChildID] IS NULL)
		LEFT JOIN [Parent] [a_Parent] ON [a_Child_1].[ParentID] = [a_Parent].[ParentID]
LIMIT 1

