﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[c1].[ChildID],
	[c2].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [c1] ON [p].[ParentID] = [c1].[ParentID]
		INNER JOIN [Child] [c2] ON [p].[ParentID] = [c2].[ParentID]

