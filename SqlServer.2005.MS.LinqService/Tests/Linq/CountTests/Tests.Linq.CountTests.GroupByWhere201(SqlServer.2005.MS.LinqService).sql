﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[g_1].[ParentID]
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]
HAVING
	Count(CASE
		WHEN [g_1].[ChildID] > 20 THEN 1
		ELSE NULL
	END) > 2

