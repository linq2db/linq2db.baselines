BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] OR [g_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g_1].[ChildID] = [a_Child].[ChildID] OR [g_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		CROSS JOIN [Parent] [c_1]
WHERE
	[t1].[ParentID] = [g_1].[ParentID]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] OR [g_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g_1].[ChildID] = [a_Child].[ChildID] OR [g_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		CROSS JOIN [Parent] [c_1]
WHERE
	[t1].[ParentID] = [g_1].[ParentID]

