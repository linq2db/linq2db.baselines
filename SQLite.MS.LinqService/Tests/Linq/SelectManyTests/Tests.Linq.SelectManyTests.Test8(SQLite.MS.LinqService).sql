BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Child].[ParentID],
	[a_Child].[ChildID]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
		INNER JOIN [GrandChild] [g_1] ON [p].[ParentID] = [g_1].[ParentID]
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] OR [g_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g_1].[ChildID] = [a_Child].[ChildID] OR [g_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		CROSS JOIN [Parent] [c_2]
WHERE
	[p].[ParentID] = [g_1].[ParentID]

