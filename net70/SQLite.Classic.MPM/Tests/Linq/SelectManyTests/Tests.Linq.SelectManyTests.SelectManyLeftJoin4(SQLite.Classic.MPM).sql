﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

