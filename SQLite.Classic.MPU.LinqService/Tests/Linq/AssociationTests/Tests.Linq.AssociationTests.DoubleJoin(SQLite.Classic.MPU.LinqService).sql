BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] OR [g_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g_1].[ChildID] = [a_Child].[ChildID] OR [g_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		LEFT JOIN [Parent] [a_Parent] ON [a_Child].[ParentID] = [a_Parent].[ParentID]
WHERE
	[a_Parent].[Value1] = 1

