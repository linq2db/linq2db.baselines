BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
		LEFT JOIN [Child] [a_Child] ON ([g_1].[ParentID] = [a_Child].[ParentID] OR [g_1].[ParentID] IS NULL AND [a_Child].[ParentID] IS NULL) AND ([g_1].[ChildID] = [a_Child].[ChildID] OR [g_1].[ChildID] IS NULL AND [a_Child].[ChildID] IS NULL)
		INNER JOIN [Parent] [p] ON [a_Child].[ParentID] = [p].[ParentID]
WHERE
	[g_1].[ParentID] < 10 AND [p].[Value1] = 3

