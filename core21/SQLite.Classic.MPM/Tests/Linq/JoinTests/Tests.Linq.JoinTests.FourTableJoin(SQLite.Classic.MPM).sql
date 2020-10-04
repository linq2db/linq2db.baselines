﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[ParentID],
	[p].[Value1],
	[c1].[ChildID],
	[c2].[GrandChildID],
	[c3].[GrandChildID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c1] ON [p].[ParentID] = [c1].[ParentID]
		INNER JOIN [GrandChild] [c2] ON [c1].[ParentID] = [c2].[ParentID]
		INNER JOIN [GrandChild] [c3] ON ([c2].[ParentID] IS NULL AND [c3].[ParentID] IS NULL OR [c2].[ParentID] = [c3].[ParentID])

