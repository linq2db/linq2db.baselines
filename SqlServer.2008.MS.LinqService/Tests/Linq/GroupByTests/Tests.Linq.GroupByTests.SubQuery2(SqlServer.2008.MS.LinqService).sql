﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_2].[ParentID]
FROM
	(
		SELECT
			[g_1].[ParentID] + 1 as [ParentID]
		FROM
			[Child] [g_1]
		WHERE
			[g_1].[ParentID] > 0
	) [g_2]
GROUP BY
	[g_2].[ParentID]

