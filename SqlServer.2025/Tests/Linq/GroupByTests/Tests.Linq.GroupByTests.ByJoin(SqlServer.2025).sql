﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	SUM([c2].[ChildID])
FROM
	[Child] [g_1]
		INNER JOIN [Child] [c2] ON [g_1].[ChildID] = [c2].[ChildID] + 1
GROUP BY
	[g_1].[ParentID]

