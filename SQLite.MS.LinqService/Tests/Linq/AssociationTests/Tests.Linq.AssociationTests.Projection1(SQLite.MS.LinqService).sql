﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[a_Parent].[ParentID],
	[a_Parent].[Value1],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
		LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [GrandChild] [g_1] ON [c_1].[ParentID] = [g_1].[ParentID]
WHERE
	[g_1].[ChildID] = 22 AND [a_Parent].[ParentID] = 2

