﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[a_Children].[ChildID],
	[a_Children].[ParentID]
FROM
	[Parent] [c_1]
		INNER JOIN [Child] [a_Children] ON [c_1].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] IS NOT NULL
WHERE
	[c_1].[ParentID] = 1

