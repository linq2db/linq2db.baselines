﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [cp]
				INNER JOIN [GrandChild] [c_1] ON [cp].[ParentID] = [c_1].[ParentID] AND [cp].[ChildID] = [c_1].[ChildID]
		WHERE
			[p].[ParentID] = [cp].[ParentID]
	)
FROM
	[Parent] [p]

