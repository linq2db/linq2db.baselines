﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*),
	SUM([g_1].[ChildID]),
	MIN([g_1].[ChildID]),
	MAX([g_1].[ChildID]),
	AVG([g_1].[ChildID])
FROM
	[Child] [g_1]
GROUP BY
	[g_1].[ParentID]

