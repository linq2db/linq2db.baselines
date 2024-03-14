﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	Count(IIF([g_1].[ChildID] > 20, 1, NULL)) > 2

