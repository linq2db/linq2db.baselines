﻿BeforeExecute
-- SqlServer.2014

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	Count(IIF([g_1].[ChildID] > 20, 1, NULL)) > 2

