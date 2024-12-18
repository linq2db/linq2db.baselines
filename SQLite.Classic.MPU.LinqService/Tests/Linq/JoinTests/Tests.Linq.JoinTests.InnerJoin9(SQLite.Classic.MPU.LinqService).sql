BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
		LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ParentID] IS NOT NULL AND [g_1].[ChildID] = [a_Child].[ChildID] AND [g_1].[ChildID] IS NOT NULL
		INNER JOIN [Parent] [p] ON [a_Child].[ParentID] = [p].[ParentID]
WHERE
	[g_1].[ParentID] < 10 AND
	[g_1].[ParentID] IS NOT NULL AND
	[p].[Value1] = 3 AND
	[p].[Value1] IS NOT NULL

