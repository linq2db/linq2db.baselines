﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[a_Children].[ParentID],
	[a_Children].[ChildID]
FROM
	[Parent] [t]
		INNER JOIN [Child] [a_Children] ON [t].[ParentID] = [a_Children].[ParentID]
WHERE
	[a_Children].[ParentID] = 1

