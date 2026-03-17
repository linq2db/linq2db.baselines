-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
		INNER JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]
		INNER JOIN [Parent] [p] ON [a_Child].[ParentID] = [p].[ParentID]
WHERE
	[g_1].[ParentID] < 10 AND [p].[Value1] = 3

