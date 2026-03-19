-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]
WHERE
	[g_1].[ChildID] > 22
ORDER BY
	[g_1].[ParentID]

