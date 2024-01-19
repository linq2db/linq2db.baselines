BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ParentID],
	[t].[ChildID],
	[t].[GrandChildID],
	[a_Child].[ParentID],
	[a_Child].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[GrandChild] [t]
		LEFT JOIN [Child] [a_Child] ON ([t].[ParentID] = [a_Child].[ParentID] OR [t].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([t].[ChildID] = [a_Child].[ChildID] OR [t].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
LIMIT 1

