-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	MAX([g_1].[ChildID]),
	MAX([g_1].[ChildID] + [g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

