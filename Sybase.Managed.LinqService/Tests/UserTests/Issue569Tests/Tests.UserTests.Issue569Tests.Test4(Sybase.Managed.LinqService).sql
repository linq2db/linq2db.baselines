﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[child_1].[ParentID],
			[child_1].[ChildID]
		FROM
			[Parent] [parent_1],
			[Parent] [s],
			[Child] [child_1]
	) [sub]
		LEFT JOIN [GrandChild] [grandChild_1] ON [sub].[ParentID] = [grandChild_1].[ParentID] AND [sub].[ChildID] = [grandChild_1].[ChildID]

