﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(IIF([g_1].[ChildID] > 20, 1, NULL))
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID],
	[g_1].[ChildID]

