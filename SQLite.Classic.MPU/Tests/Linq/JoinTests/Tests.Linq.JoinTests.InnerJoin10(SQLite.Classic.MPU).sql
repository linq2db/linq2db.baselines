﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[q1].[GrandChildID]
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [q1] ON ([t1].[ParentID] = [q1].[ParentID])

