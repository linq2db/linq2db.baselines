﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[g_2].[c1],
	Sum([g_2].[ParentID])
FROM
	(
		SELECT
			[g_1].[ChildID] + 1 as [c1],
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]

