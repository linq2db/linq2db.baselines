﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
		INNER JOIN [Child] [g_1] ON [t].[ParentID] = [g_1].[ParentID] AND Abs([g_1].[ChildID]) > 3
ORDER BY
	[g_1].[ParentID]

