﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Parent] [parent_1],
	[Parent] [s],
	[Child] [child_1]
		LEFT JOIN [GrandChild] [grandChild_1] ON [child_1].[ParentID] = [grandChild_1].[ParentID] AND [child_1].[ChildID] = [grandChild_1].[ChildID]

