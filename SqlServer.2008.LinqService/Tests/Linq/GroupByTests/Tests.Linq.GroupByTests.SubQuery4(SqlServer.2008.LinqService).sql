﻿BeforeExecute
-- SqlServer.2008

SELECT
	[g_1].[ChildID] + 1,
	Sum([g_1].[ParentID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ChildID] + 1

