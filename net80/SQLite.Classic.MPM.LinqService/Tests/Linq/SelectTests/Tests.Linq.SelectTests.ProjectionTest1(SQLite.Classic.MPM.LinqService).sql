﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_1].[ChildID],
	[a_ParentID2].[ParentID],
	[a_ParentID2].[Value1],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [a_ParentID2] ON [c_1].[ParentID] = [a_ParentID2].[ParentID]

