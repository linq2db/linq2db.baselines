﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_1].[ParentID],
	[g_1].[ChildID],
	[g_1].[GrandChildID]
FROM
	[GrandChild] [g_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [t]
				LEFT JOIN [Parent] [gr] ON [t].[ParentID] = [gr].[ParentID]
		WHERE
			[t].[ChildID] = [g_1].[ChildID]
	)

