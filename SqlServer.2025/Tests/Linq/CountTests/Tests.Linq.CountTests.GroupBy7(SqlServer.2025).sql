﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*),
	MAX([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

