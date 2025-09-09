﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[g_1].[ParentID]
FROM
	[Child] [gc]
		INNER JOIN [Parent] [a_Parent] ON [gc].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [Child] [g_1] ON [a_Parent].[ParentID] = [g_1].[ParentID]
GROUP BY
	[g_1].[ParentID]

