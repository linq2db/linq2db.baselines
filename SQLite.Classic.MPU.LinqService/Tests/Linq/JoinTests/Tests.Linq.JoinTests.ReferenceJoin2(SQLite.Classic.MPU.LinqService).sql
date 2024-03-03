BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] OR [g_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g_1].[ChildID] = [a_Child].[ChildID] OR [g_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		INNER JOIN [Child] [c_1] ON [a_Child].[ParentID] = [c_1].[ParentID] AND [a_Child].[ChildID] = [c_1].[ChildID]

