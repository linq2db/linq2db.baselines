﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[g_1].[GrandChildID]
FROM
	[Child] [c_1]
		INNER JOIN [GrandChild] [g_1] ON ([c_1].[ParentID] = [a_Child].[ParentID] AND [c_1].[ChildID] = [a_Child].[ChildID])
			LEFT JOIN [Child] [a_Child] ON [g_1].[ParentID] = [a_Child].[ParentID] AND [g_1].[ChildID] = [a_Child].[ChildID]

