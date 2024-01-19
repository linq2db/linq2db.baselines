BeforeExecute
-- SQLite.MS SQLite

SELECT
	Max([g_1].[ChildID]),
	Max([g_1].[ChildID] + [g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

